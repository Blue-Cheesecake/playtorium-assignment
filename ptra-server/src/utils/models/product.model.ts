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

  constructor(id: number, name: string, categoryId: number, price: number) {
    this.id = id;
    this.name = name;
    this.categoryId = categoryId;
    this.price = price;
  }
}
