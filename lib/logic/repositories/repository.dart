import 'package:get_number/logic/model/agent_model.dart';
import 'package:get_number/logic/model/auth_model.dart';
import 'package:get_number/logic/model/blocked_agent_model.dart';
import 'package:get_number/logic/model/history_number_model.dart';
import 'package:get_number/logic/model/number_model.dart';
import 'package:get_number/logic/model/sms_model.dart';
import 'package:get_number/logic/services/service.dart';

class UserRepository {
  ServiceApi _userProvider = ServiceApi();

  //login
  Future<AuthModel> getUser(String msisdn, String pin) =>
      _userProvider.getUser(msisdn, pin);

//agent list
  Future<List<AgentModel>> getAgentList() => _userProvider.getAgentList();

//add agent
  Future<String> addAgent(String msisdn, String name) =>
      _userProvider.addAgent(msisdn, name);

  //get random number
  Future<GetNumberModel> getNumber() => _userProvider.getNumber();

  //delete agent
  Future<String> deleteAgent(int id) => _userProvider.deleteAgent(id);

  //get sms
  Future<List<SmsModel>> getSms(String msisdn) => _userProvider.getSms(msisdn);

//get history number
  Future<List<HistoryNumberModels>> getHistoryNumber() =>
      _userProvider.getHistoryNumber();

  //get serch number
  Future searchNumber(String msisdn) => _userProvider.serchNumber(msisdn);

  //deactivate number
  Future deactivateNumber(String msisdn) =>
      _userProvider.deactivateThisNumber(msisdn);

  //block agent
  Future blockAgent(bool block, int id) =>
      _userProvider.blockThisAgent(block, id);

  //blocked agent list
  Future<List<BlockedAgentModel>> getBlockedAgentList() =>
      _userProvider.getBlockedAgentList();
}
