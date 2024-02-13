# Playtorium Assignment

## Implementations

1. PTRA Server - The NestJS server providing the API for getting final total price given list of products and campaigns.
2. PTRA Mobile - The Mobile Application simulating the Shopping Cart for selecting the products with discount  and see the total price

## PTRA Server

### Getting Started

1. Build docker file

```bash
cd ptra-server
docker build -t cheeseandcupcake/ptra-server:prd .
```

2. Run the docker image on localhost with port `9000`

```bash
docker run -d -p 9000:9000 --name=ptra-server cheeseandcupcake/ptra-server:prd
```

3. Test the API

```bash
curl "http://localhost:9000/api/v1/product"
```

You should be able to see the list of product after using `curl`


### API Documents

**NOTE** more Product Id and Campaign Id can be found at `database.service.ts`, on `MockDatabaseService` class

#### Get Total Price

Method: `POST`
Endpoint: `/api/v1/sale-campaign`

##### **Header**

`<None>`

##### **Query Parameters**

`<None>`

##### **Body**

|Name|Type|Required|
|----|----|----|
|products|List[Product Object]|✅|
|campaings|List[Campaign Object]||

**Product Object**

|Name|Type|Required|
|----|----|----|
|id|Integer|✅|
|quantity|Integer|✅|

**Campaign Object**

|Name|Type|Required|Note|
|----|----|----|----|
|id|Integer|✅|
|discount|Double|✅|
|everyXPrice|Double||Available only SpecialCampaigns|
|productCategory|String : Enum - ('Clothing', 'Accessories', 'Electronics')||Available only PercentageDiscountByItemCategory|

**Example**

```json
{
  "products": [
    {
      "id": 1,
      "quantity": 2
    },
    {
      "id": 3,
      "quantity": 1
    },
  ],
  "campaings": [
    {
      "id": 1,
      "discount": 150
    }
  ]
}
```

**Response**

Case - 200 (Success)

|Name|Type|Required|
|----|----|----|
|totalPrice|double||

```json
{
  "totalPrice": 1250
}
```

Case - 200 (Missing Property)

The result will be null

```json
{
  "totalPrice": null
}
```

Case - 400 : Duplicated category on different campaign
Case - 400 : Invalid discount value 
  - Discount in decimal form should not be less than 0
  - Discount in percentage should be in between 0 and 100 inclusive

Case - 400 : Invalid Dto property 
   - `productCategory` should be available only PercentageDiscountByItemCategory, 
   - `everyXPrice` should be available only SpecialCampaign

|Name|Type|Required|
|----|----|----|
|message|String|✅|

```json
{
    "message": "Sale Campaign Dto is Invalid"
}
```

#### Get All Products List

Method: `POST`
Endpoint: `/api/v1/sale-campaign`

##### **Header**

`<None>`

##### **Query Parameters**

`<None>`

##### **Body**

`<None>`

##### **Response**

Case - 200 (Success)

|Name|Type|Required|
|----|----|----|
|id|Integer|✅|
|name|String|✅|
|categoryId|Integer|✅|
|price|double|✅|
|imageURL|String|✅|

```json
[
    {
        "id": 1,
        "name": "T Shirt",
        "categoryId": 1,
        "price": 350,
        "imageURL": "https://mockups-design.com/wp-content/uploads/2021/08/Hanging_T-Shirt_Mockup_2.jpg"
    },
    {
        "id": 2,
        "name": "Hat",
        "categoryId": 2,
        "price": 250,
        "imageURL": "https://static3.depositphotos.com/1001449/153/i/450/depositphotos_1531740-stock-photo-hat.jpg"
    },
    {
        "id": 3,
        "name": "Hoodie",
        "categoryId": 1,
        "price": 700,
        "imageURL": "https://unblast.com/wp-content/uploads/2021/10/Simple-Hoodie-Mockup.jpg"
    },
    {
        "id": 4,
        "name": "Watch",
        "categoryId": 2,
        "price": 850,
        "imageURL": "https://images.pexels.com/photos/277390/pexels-photo-277390.jpeg?cs=srgb&dl=pexels-pixabay-277390.jpg&fm=jpg"
    },
    {
        "id": 5,
        "name": "Bag",
        "categoryId": 2,
        "price": 640,
        "imageURL": "https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg"
    },
    {
        "id": 6,
        "name": "Belt",
        "categoryId": 2,
        "price": 230,
        "imageURL": "https://img.freepik.com/free-photo/leather-belt_74190-2615.jpg"
    }
]
```