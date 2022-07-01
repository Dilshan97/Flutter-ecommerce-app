class Product {
  int? id;
  String? name;
  String? category;
  String? price;
  int? qty;
  String? rating;
  String? image;

  Product(
      {this.id,
        this.name,
        this.category,
        this.price,
        this.qty,
        this.rating,
        this.image});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    price = json['price'];
    qty = json['qty'];
    rating = json['rating'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['category'] = this.category;
    data['price'] = this.price;
    data['qty'] = this.qty;
    data['rating'] = this.rating;
    data['image'] = this.image;
    return data;
  }
}
