import { Controller, Get } from '@nestjs/common';
import { ProductService } from './product.service';
import ProductModel from '../..//utils/models/product.model';

@Controller('api/v1/product')
export class ProductController {
  constructor(private readonly productService: ProductService) {}

  @Get()
  fetchAllProducts(): ProductModel[] {
    const response = this.productService.getAllProducts();
    return response;
  }
}
