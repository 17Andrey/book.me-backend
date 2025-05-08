import { Controller, Get, Query } from '@nestjs/common';
import { RestaurantsService } from './restaurants.service';

@Controller('restaurants')
export class RestaurantsController {
  constructor(private readonly restaurantsService: RestaurantsService) {}

  @Get()
  async getRestaurants(
    @Query('page') page: string,
    @Query('pageSize') pageSize: string,
  ) {
    const pageNum = parseInt(page, 10) || 1;
    const size = parseInt(pageSize, 10) || 6;
    return this.restaurantsService.getRestaurants(pageNum, size);
  }
}
