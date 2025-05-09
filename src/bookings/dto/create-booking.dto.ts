import { IsInt, IsDateString, IsString, Min, IsNotEmpty } from 'class-validator';

export class CreateBookingDto {
  @IsInt()
  userId: number;

  @IsInt()
  restaurantId: number;

  @IsDateString()
  date: string;

  @IsString()
  @IsNotEmpty()
  time: string;

  @IsInt()
  @Min(1)
  guests: number;
}
