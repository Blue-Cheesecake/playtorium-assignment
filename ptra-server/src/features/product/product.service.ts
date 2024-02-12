import { Injectable } from '@nestjs/common';
import { IDatabaseService } from '../../utils/database/database.service';
import ProductModel from '../..//utils/models/product.model';

@Injectable()
export class ProductService {
  constructor(private readonly databaseService: IDatabaseService) {}

  getAllProducts(): ProductModel[] {
    const response = this.databaseService.getAllProducts();
    return response;
  }
}
