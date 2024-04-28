import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practical/controller/provider.dart';
import 'package:provider_practical/model/ProdModel.dart';
import 'package:provider_practical/view/showProductDetails.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State createState() => ProductDetailsState();
}

class ProductDetailsState extends State {
  TextFormField inputField(String text, TextEditingController cntrl) {
    return TextFormField(
      controller: cntrl,
      decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(
            fontSize: 18,
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide: BorderSide(color: Colors.black, width: 2)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide: BorderSide(color: Colors.black, width: 2))),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController urlController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    //GlobalKey formKey = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Get product details",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              inputField("Paste url", urlController),
              const SizedBox(
                height: 30,
              ),
              inputField("Enter Name", nameController),
              const SizedBox(
                height: 30,
              ),
              inputField("Enter price", priceController),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  ProductModel obj = ProductModel(
                      prodName: nameController.text,
                      prodPrice: double.parse(priceController.text),
                      url: urlController.text);
                  Provider.of<ProductInfo>(context, listen: false)
                      .changeProduct(obj);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ShowProduct()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.green),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
