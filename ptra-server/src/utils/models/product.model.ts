export default class ProductModel {
  id: number;
  name: string;
  categoryId: number;
  price: number;

  /**
   * Network URL from Google 😃
   */
  imageURL: string;

  constructor(
    id: number,
    name: string,
    categoryId: number,
    price: number,
    imageURL: string,
  ) {
    this.id = id;
    this.name = name;
    this.categoryId = categoryId;
    this.price = price;
    this.imageURL = imageURL;
  }
}
