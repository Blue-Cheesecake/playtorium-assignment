import { IsInt, IsNotEmpty, IsNumber, IsString } from 'class-validator';

export default class ProductModel {
  @IsInt()
  @IsNotEmpty()
  id: number;

  @IsString()
  @IsNotEmpty()
  name: string;

  @IsInt()
  @IsNotEmpty()
  categoryId: number;

  @IsNumber()
  @IsNotEmpty()
  price: number;
}
