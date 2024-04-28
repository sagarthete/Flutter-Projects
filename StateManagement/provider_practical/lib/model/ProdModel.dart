// ignore: file_names


class ProductModel {
  String? url;
  String? prodName;
  double? prodPrice;
  bool? isFavorite;
  int quantity = 0;

  ProductModel(
      {this.prodName,
      this.url,
      this.prodPrice,
      this.isFavorite,
      this.quantity=0});
}
