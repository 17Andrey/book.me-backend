import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateBookingDto } from './dto/create-booking.dto';

@Injectable()
export class BookingsService {
  constructor(private prisma: PrismaService) {}

  async create(dto: CreateBookingDto) {
    // Конвертация даты из формата 'DD.MM.YYYY' в ISO-8601
    let isoDate = dto.date;
    if (/^\d{2}\.\d{2}\.\d{4}$/.test(dto.date)) {
      const [day, month, year] = dto.date.split('.');
      isoDate = `${year}-${month}-${day}T00:00:00.000Z`;
    }
    return this.prisma.booking.create({
      data: {
        ...dto,
        date: isoDate,
      },
    });
  }

  async getByUser(userId: number) {
    return this.prisma.booking.findMany({
      where: { userId },
      include: { restaurant: true },
    });
  }

  async delete(id: number) {
    return this.prisma.booking.delete({ where: { id } });
  }
}
