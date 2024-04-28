import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practical/controller/provider.dart';
import 'package:provider_practical/model/ProdModel.dart';

class ShowProduct extends StatefulWidget {
  const ShowProduct({super.key});

  @override
  State createState() => ShowProductState();
}

class ShowProductState extends State {
  bool favFlag = false;
  @override
  Widget build(BuildContext context) {
    ProductModel obj = Provider.of<ProductInfo>(context).product;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Show Product Details",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color.fromARGB(255, 63, 148, 66),
        centerTitle: true,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30.0, right: 10, bottom: 10, left: 10),
        child: Container(
          height: 400,
          width: 500,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(14)),
              color: Color.fromARGB(255, 237, 243, 233),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 114, 114, 114),
                    offset: Offset(0, 8),
                    blurRadius: 20,
                    spreadRadius: 2)
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                width: 300,
                child: Image.asset(
                  obj.url!,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Text(
                      "Name : ${obj.prodName}",
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Text(
                      "Price : ${obj.prodPrice}",
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    height: 2,
                    width: 380,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        //obj.isFavorite = favFlag;
                        Provider.of<ProductInfo>(context, listen: false)
                            .addFavorite(favFlag);
                        favFlag = !favFlag;
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        child: (obj.isFavorite == true)
                            ? const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.black,
                                size: 35,
                              )
                            : const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 35,
                              ),
                      ),
                    ),
                    const SizedBox(
                      width: 145,
                    ),
                    Consumer(builder: ((context, value, child) {
                      return Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black)),
                            child: GestureDetector(
                                onTap: () {
                                  Provider.of<ProductInfo>(context,
                                          listen: false)
                                      .addProduct();
                                },
                                child: const Icon(Icons.add)),
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black)),
                            child: Text(
                              "${obj.quantity}",
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black)),
                            child: GestureDetector(
                                onTap: () {
                                  Provider.of<ProductInfo>(context,
                                          listen: false)
                                      .removeProduct();
                                },
                                child: const Icon(Icons.remove)),
                          ),
                        ],
                      );
                    }))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 2,
                width: 380,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
