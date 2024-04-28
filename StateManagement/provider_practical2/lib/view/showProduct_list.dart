import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_practical2/controller/product_controller.dart';

class ShowProductView extends StatefulWidget {
  const ShowProductView({super.key});
  @override
  State createState() => ShowProductViewState();
}

class ShowProductViewState extends State<ShowProductView> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Products"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    child: Image.network(
                      Provider.of<ProductDetailController>(context)
                          .productModelList[index]
                          .url,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
