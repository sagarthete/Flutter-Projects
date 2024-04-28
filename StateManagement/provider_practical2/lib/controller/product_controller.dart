import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:provider_practical2/model/ProductModel.dart";
import "package:provider_practical2/view/getProduct_Details.dart";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return ProductDetailController();
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetProductView(),
      ),
    );
  }
}

class ProductDetailController with ChangeNotifier {
  List productModelList = [];
  void addProduct(ProductModel obj) {
    productModelList.add(obj);
    notifyListeners();
  }
}
