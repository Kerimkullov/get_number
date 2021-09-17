import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_number/components/custom_loading.dart';
import 'package:get_number/logic/bloc/bloc/blocked_agents_bloc.dart';
import 'package:get_number/screen.dart/agent/unblock_screen.dart';

import 'agents_list_screen.dart';

class BlockedAgentsScreen extends StatefulWidget {
  BlockedAgentsScreen({Key? key}) : super(key: key);

  @override
  _BlockedAgentsScreenState createState() => _BlockedAgentsScreenState();
}

class _BlockedAgentsScreenState extends State<BlockedAgentsScreen> {
  final bloc = BlockedAgentsBloc();
  Future<bool> _onWillPop() async {
    await Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return AgentsScreen();
        },
      ),
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => AgentsScreen())),
          ),
          title: Text("Заблокированные агенты"),
        ),
        body: SafeArea(
          child: BlocProvider<BlockedAgentsBloc>(
            create: (context) => bloc..add(BlockedAgentsEvent.blocked()),
            child: BlocConsumer<BlockedAgentsBloc, BlockedAgentsState>(
              listener: (context, state) {
                state.maybeWhen(
                    field: (error) => {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(error.message.toString())))
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
                              Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: value.model.length,
                                  itemBuilder: (context, index) => Column(
                                    children: [
                                      SizedBox(height: 16),
                                      InkWell(
                                        onTap: () => Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    UnblockAgentScreen(
                                                      agentName: value
                                                          .model[index].name
                                                          .toString(),
                                                      number: value
                                                          .model[index].msisdn
                                                          .toString(),
                                                      id: value
                                                          .model[index].id!,
                                                      block: value
                                                          .model[index].block!,
                                                    ))),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: ListTile(
                                            title: Text(
                                                value.model[index].name
                                                    .toString(),
                                                style: TextStyle(fontSize: 20)),
                                            subtitle: Text(
                                                value.model[index].msisdn
                                                    .toString(),
                                                style: TextStyle(fontSize: 18)),
                                            trailing: Text(
                                                "pin - ${value.model[index].pin.toString()}"),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
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
      ),
    );
  }
}
