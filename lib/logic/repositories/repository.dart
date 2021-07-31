import 'package:get_number/logic/model/agent_model.dart';
import 'package:get_number/logic/model/auth_model.dart';
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
}
