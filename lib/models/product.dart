class Product {
  int? id;
  String? name;
  String? category;
  String? price;
  int? qty;
  String? image;

  Product(
      {this.id, this.name, this.category, this.price, this.qty, this.image});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    price = json['price'];
    qty = json['qty'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['category'] = this.category;
    data['price'] = this.price;
    data['qty'] = this.qty;
    data['image'] = this.image;
    return data;
  }
}
