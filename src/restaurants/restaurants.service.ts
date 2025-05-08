import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

const IMAGE_BASE_URL = '/uploads/';

@Injectable()
export class RestaurantsService {
  constructor(private prisma: PrismaService) {}

  async getRestaurants(page: number = 1, pageSize: number = 6) {
    const skip = (page - 1) * pageSize;
    const [restaurants, total] = await Promise.all([
      this.prisma.restaurant.findMany({
        skip,
        take: pageSize,
        orderBy: { id: 'asc' },
      }),
      this.prisma.restaurant.count(),
    ]);
    // Добавляем путь к изображению, если оно есть
    const data = restaurants.map(r => ({
      ...r,
      image: r.image ? IMAGE_BASE_URL + r.image : null,
    }));
    return {
      data,
      total,
      page,
      pageSize,
      totalPages: Math.ceil(total / pageSize),
    };
  }
}
