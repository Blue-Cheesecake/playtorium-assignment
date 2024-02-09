export default class ProductModel {
  id: number;
  name: string;
  categoryId: number;
  price: number;

  constructor(id: number, name: string, categoryId: number, price: number) {
    this.id = id;
    this.name = name;
    this.categoryId = categoryId;
    this.price = price;
  }
}
