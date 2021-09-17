// class SmsModel {
//   static fromJson(SmsModel e) {
//     // return SmsModel();
//   }
// }
// class SmsModel {
//   String? message;

//   SmsModel({this.message});

//   factory SmsModel.fromJson(Map<String, dynamic> json) => SmsModel(
//         message: json['message'] as String?,
//       );

//   Map<String, dynamic> toJson() => {
//         'message': message,
//       };
// }
class SmsModel {
  String? date;
  String? message;

  SmsModel({this.date, this.message});

  SmsModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['message'] = this.message;
    return data;
  }
}
