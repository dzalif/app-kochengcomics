import 'Product.dart';

class ProductsRepository {
  static List<Product> getProducts() {
    var allProducts = <Product> [
      Product(
        id: 0,
        name: 'Attack on Titan',
        price: 28000,
        image: 'https://upload.wikimedia.org/wikipedia/id/d/d6/Shingeki_no_Kyojin_manga_volume_1.jpg'
      ),
      Product(
          id: 1,
          name: 'Dragon Ball Super',
          price: 40000,
          image: 'https://upload.wikimedia.org/wikipedia/id/7/74/Dragon_Ball_Super_Key_visual.jpg'
      ),
      Product(
          id: 2,
          name: 'Detektif Conan',
          price: 25000,
          image: 'https://upload.wikimedia.org/wikipedia/id/3/36/Detective_Conan_Vol_1.jpg'
      ),
      Product(
          id: 3,
          name: 'Boruto',
          price: 40000,
          image: 'https://upload.wikimedia.org/wikipedia/id/d/db/Boruto_manga_vol_1.jpg'
      ),
      Product(
          id: 4,
          name: 'Naruto',
          price: 40000,
          image: 'https://upload.wikimedia.org/wikipedia/en/9/94/NarutoCoverTankobon1.jpg'
      ),
      Product(
          id: 5,
          name: 'The Promised Neverland',
          price: 25000,
          image: 'https://upload.wikimedia.org/wikipedia/id/4/44/The_Promised_Neverland%2C_Volume_1.jpg'
      ),
    ];
    return allProducts.toList();
  }
}