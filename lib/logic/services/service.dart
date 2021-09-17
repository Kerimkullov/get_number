import 'package:dio/dio.dart';
import 'package:get_number/helper/catch_exceptions.dart';
import 'package:get_number/helper/dio_settings.dart';
import 'package:get_number/logic/model/agent_model.dart';
import 'package:get_number/logic/model/auth_model.dart';
import 'package:get_number/logic/model/blocked_agent_model.dart';
import 'package:get_number/logic/model/history_number_model.dart';
import 'package:get_number/logic/model/number_model.dart';
import 'package:get_number/logic/model/sms_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServiceApi {
  late DioSettings _dioSettings;
  late Dio _dio;

  /// И мап для запроса
  late Map<String, dynamic> request;
  static ServiceApi _instance = new ServiceApi.internal();
  factory ServiceApi() => _instance;
  ServiceApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }
  Future<AuthModel> getUser(String msisdn, String pin) async {
    try {
      final response =
          await _dio.post("auth/login", data: {"msisdn": msisdn, "pin": pin});
      AuthModel user = AuthModel.fromJson(response.data);
      return user;
    } on DioError catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<List<AgentModel>> getAgentList() async {
    try {
      final response =
          await _dio.get("agent/get/by/client?id=${await getId()}");
      return response.data
          .map<AgentModel>((e) => AgentModel.fromJson(e))
          .toList();
    } on DioError catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<String> addAgent(String msisdn, String name) async {
    try {
      final response = await _dio.post("agent/create",
          data: {"clientId": await getId(), "msisdn": msisdn, "name": name});
      return response.data["message"];
    } on DioError catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<GetNumberModel> getNumber() async {
    try {
      final response =
          await _dio.get("relation/generate/msisdn?id=${await getId()}");
      return GetNumberModel.fromJson(response.data);
    } on DioError catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<String> deleteAgent(int id) async {
    try {
      final response = await _dio.get("agent/delete?id=$id");
      return response.data["message"];
    } on DioError catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<List<SmsModel>> getSms(String msisdn) async {
    try {
      final response = await _dio.get("sms/get/by/msisdn?msisdn=$msisdn");
      return response.data.map<SmsModel>((e) => SmsModel.fromJson(e)).toList();
    } on DioError catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<List<HistoryNumberModels>> getHistoryNumber() async {
    try {
      final response = await _dio.get(
          "https://app1.megacom.kg:9090/virtualnums/api/v1/nums/find/inprocess?id=${await getId()}");
      return response.data
          .map<HistoryNumberModels>((e) => HistoryNumberModels.fromJson(e))
          .toList();
    } on DioError catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<String> serchNumber(String msisdn) async {
    try {
      final response = await _dio.get(
          "https://app1.megacom.kg:9090/virtualnums/api/v1/nums/find/by/msisdn?id=${await getId()}&msisdn=$msisdn");
      return response.data["msisdn"];
    } on DioError catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<String> deactivateThisNumber(String msisdn) async {
    try {
      final response = await _dio.post(
          "https://app1.megacom.kg:9090/virtualnums/api/v1/nums/deactivate/msisdn?msisdn=$msisdn");
      print("response.data jjj - ${response.data}");
      return response.data["message"];
    } on DioError catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<String> blockThisAgent(bool block, int id) async {
    try {
      final response = await _dio.put(
          "https://app1.megacom.kg:9090/virtualnums/api/v1/agent/block?block=$block&id=$id");
      print("response.data jjj - ${response.data}");
      return response.data["message"];
    } on DioError catch (e) {
      throw CatchException.convertException(e);
    }
  }

  Future<List<BlockedAgentModel>> getBlockedAgentList() async {
    try {
      final response = await _dio.get(
          "https://app1.megacom.kg:9090/virtualnums/api/v1/agent/get/blocked?id=${await getId()}");
      return response.data
          .map<BlockedAgentModel>((e) => BlockedAgentModel.fromJson(e))
          .toList();
    } on DioError catch (e) {
      throw CatchException.convertException(e);
    }
  }
}

Future<int> getId() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int val = prefs.getInt("id") ?? 0;
  return val;
}
