import { RequestInfoEntity } from './request-info.entitiy';

export interface IterateProductDtoResult {
  totalPrice: number;
  productsInfo: RequestInfoEntity[];
}
