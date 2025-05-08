import { Body, Controller, Post } from '@nestjs/common';
import { UsersService } from './users.service';
import { LoginDto } from '../auth/dto/auth.dto';

@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}

  // Один метод для авторизации или регистрации
  @Post('auth')
  async auth(@Body() loginDto: LoginDto) {
    return this.usersService.loginOrRegister(loginDto);
  }
}
