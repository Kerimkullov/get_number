class HistoryNumberModels {
  int? id;
  String? msisdn;
  String? status;

  HistoryNumberModels({this.id, this.msisdn, this.status});

  HistoryNumberModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    msisdn = json['msisdn'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['msisdn'] = this.msisdn;
    data['status'] = this.status;
    return data;
  }
}
