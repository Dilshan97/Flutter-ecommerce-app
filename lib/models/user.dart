class User {
  int? id;
  String? name;
  String? email;
  String? nexusCardNo;

  User({this.id, this.name, this.email, this.nexusCardNo});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    nexusCardNo = json['nexus_card_no'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['nexus_card_no'] = this.nexusCardNo;
    return data;
  }
}
