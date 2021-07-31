class AuthModel {
  String? role;
  String? pin;
  int? id;
  String? msisdn;

  AuthModel({this.role, this.pin, this.id, this.msisdn});

  AuthModel.fromJson(Map<String, dynamic> json) {
    role = json['role'];
    pin = json['pin'];
    id = json['id'];
    msisdn = json['msisdn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['role'] = this.role;
    data['pin'] = this.pin;
    data['id'] = this.id;
    data['msisdn'] = this.msisdn;
    return data;
  }
}
