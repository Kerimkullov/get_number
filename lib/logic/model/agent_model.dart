class AgentModel {
  String? name;
  int? id;
  String? msisdn;

  AgentModel({this.name, this.id, this.msisdn});

  AgentModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    msisdn = json['msisdn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['msisdn'] = this.msisdn;
    return data;
  }
}
