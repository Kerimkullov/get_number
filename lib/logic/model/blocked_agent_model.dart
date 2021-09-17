class BlockedAgentModel {
  String? pin;
  String? name;
  bool? block;
  int? id;
  String? msisdn;

  BlockedAgentModel({this.pin, this.name, this.block, this.id, this.msisdn});

  BlockedAgentModel.fromJson(Map<String, dynamic> json) {
    pin = json['pin'];
    name = json['name'];
    block = json['block'];
    id = json['id'];
    msisdn = json['msisdn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pin'] = this.pin;
    data['name'] = this.name;
    data['block'] = this.block;
    data['id'] = this.id;
    data['msisdn'] = this.msisdn;
    return data;
  }
}
