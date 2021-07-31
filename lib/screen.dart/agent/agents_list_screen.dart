import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_number/components/custom_loading.dart';
import 'package:get_number/logic/bloc/agent_list/agent_list_bloc.dart';
import 'add_agent_screen.dart';

class AgentsScreen extends StatefulWidget {
  AgentsScreen({Key? key}) : super(key: key);

  @override
  _AgentsScreenState createState() => _AgentsScreenState();
}

class _AgentsScreenState extends State<AgentsScreen> {
  final bloc = AgentListBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Агенты")),
      body: SafeArea(
        child: BlocProvider<AgentListBloc>(
          create: (context) => bloc..add(AgentListEvent.agentList()),
          child: BlocConsumer<AgentListBloc, AgentListState>(
            listener: (context, state) {
              state.maybeWhen(
                  field: (error) => {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error.message.toString())))
                      },
                  delete: (model) => {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(model))),
                        bloc.add(AgentListEvent.agentList())
                      },
                  loaded: (data) async {},
                  orElse: () {});
            },
            builder: (context, state) {
              return state.maybeMap(
                  orElse: () => CustomLoading(),
                  loaded: (value) => Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: value.model.length,
                              itemBuilder: (context, index) => Column(
                                children: [
                                  SizedBox(height: 16),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: ListTile(
                                      title: Text(
                                          value.model[index].name.toString(),
                                          style: TextStyle(fontSize: 20)),
                                      subtitle: Text(
                                          value.model[index].msisdn.toString(),
                                          style: TextStyle(fontSize: 18)),
                                      trailing: InkWell(
                                        onTap: () => bloc.add(
                                            AgentListEvent.deleteAgent(
                                                value.model[index].id!)),
                                        child: Icon(
                                          Icons.delete,
                                          size: 28,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                  initial: (_) => CustomLoading());
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddAgentScreen())),
        child: Icon(Icons.add),
      ),
    );
  }
}
