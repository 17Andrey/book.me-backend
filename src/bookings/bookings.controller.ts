import { Controller, Post, Get, Delete, Body, Param, Query, UseGuards, Request } from '@nestjs/common';
import { BookingsService } from './bookings.service';
import { JwtAuthGuard } from '../auth/guards/jwt-auth.guard';

@Controller('bookings')
export class BookingsController {
  constructor(private readonly bookingsService: BookingsService) {}

  // Создать бронь (только для авторизованных)
  @UseGuards(JwtAuthGuard)
  @Post()
  async create(@Body() dto: any, @Request() req) {
    // userId берём из токена
    return this.bookingsService.create({ ...dto.data, userId: req.user.id });
  }

  // Получить все брони пользователя (только для авторизованных)
  @UseGuards(JwtAuthGuard)
  @Get()
  async getByUser(@Request() req) {
    return this.bookingsService.getByUser(req.user.id);
  }

  // Удалить бронь по id (только для авторизованных)
  @UseGuards(JwtAuthGuard)
  @Delete(':id')
  async delete(@Param('id') id: string, @Request() req) {
    // Можно добавить проверку, что бронь принадлежит пользователю
    return this.bookingsService.delete(Number(id));
  }
}
