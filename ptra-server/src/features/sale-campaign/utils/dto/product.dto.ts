import { IsInt, IsNotEmpty } from 'class-validator';

export default class ProductDto {
  @IsInt()
  @IsNotEmpty()
  id: number;

  @IsInt()
  @IsNotEmpty()
  quantity: number;
}
