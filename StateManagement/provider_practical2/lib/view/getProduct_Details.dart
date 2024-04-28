import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practical2/model/ProductModel.dart';
import "package:provider_practical2/controller/product_controller.dart";
import 'package:provider_practical2/view/showProduct_list.dart';

class GetProductView extends StatefulWidget {
  const GetProductView({super.key});

  @override
  State createState() => GetProductViewState();
}

class GetProductViewState extends State<GetProductView> {
  TextEditingController urlController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  SizedBox sizedBox({double hgt = 0, double wdt = 0}) {
    return SizedBox(
      height: hgt,
      width: wdt,
    );
  }

  TextFormField inputField(String hnt, TextEditingController cntrl) {
    return TextFormField(
      controller: cntrl,
      decoration: InputDecoration(
        hintText: hnt,
        hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(width: 2, color: Colors.black)),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(width: 2, color: Colors.black)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Enter Product Details",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 40, right: 15, left: 15, bottom: 10),
          child: Column(
            children: [
              sizedBox(
                hgt: 20,
              ),
              inputField("Paste url", urlController),
              sizedBox(
                hgt: 20,
              ),
              inputField("Enter Name", nameController),
              sizedBox(hgt: 20),
              inputField("Enter Price", priceController),
              sizedBox(
                hgt: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      ProductModel ProdObj = ProductModel(
                          isFavorite: false,
                          url: urlController.text,
                          name: nameController.text,
                          price: double.parse(priceController.text));
                      Provider.of<ProductDetailController>(context)
                          .addProduct(ProdObj);
                    },
                    child: Container(
                      height: 30,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 8),
                                blurRadius: 6,
                                spreadRadius: 0.5)
                          ],
                          color: Color.fromARGB(255, 156, 222, 158),
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      child: const Text("Add",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                  ),
                  sizedBox(wdt: 50),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ShowProductView()));
                    },
                    child: Container(
                      height: 30,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 8),
                                blurRadius: 6,
                                spreadRadius: 0.5)
                          ],
                          color: Color.fromARGB(255, 156, 222, 158),
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
