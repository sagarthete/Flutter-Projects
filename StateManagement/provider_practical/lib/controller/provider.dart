import "package:flutter/material.dart";
import "package:provider/provider.dart";
import 'package:provider_practical/model/ProdModel.dart';
import 'package:provider_practical/view/getProductDetails.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ProductInfo(product: ProductModel());
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductDetails(),
      ),
    );
  }
}

class ProductInfo with ChangeNotifier {
  ProductModel product;

  ProductInfo({required this.product});

  void changeProduct(ProductModel product) {
    this.product = product;
    notifyListeners();
  }

  void addFavorite(bool value) {
    product.isFavorite = value;
    notifyListeners();
  }

  void addProduct() {
    product.quantity = product.quantity + 1;
    notifyListeners();
  }

  void removeProduct() {
    if (product.quantity > 0) {
      product.quantity = product.quantity - 1;
    }
    notifyListeners();
  }
}
