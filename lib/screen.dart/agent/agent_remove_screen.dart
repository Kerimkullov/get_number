import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_number/components/%20custom_container.dart';
import 'package:get_number/components/custom_exception.dart';
import 'package:get_number/components/custom_loading.dart';
import 'package:get_number/logic/bloc/agent_list/agent_list_bloc.dart';
import 'package:get_number/logic/bloc/blockAgent/blockagent_bloc.dart';

import 'agents_list_screen.dart';

// ignore: must_be_immutable
class RemoveAgentScreen extends StatefulWidget {
  RemoveAgentScreen(
      {Key? key,
      required this.agentName,
      required this.number,
      required this.id,
      required this.block})
      : super(key: key);
  final String agentName;
  final String number;
  final int id;
  bool block;
  @override
  _RemoveAgentScreenState createState() => _RemoveAgentScreenState();
}

class _RemoveAgentScreenState extends State<RemoveAgentScreen> {
  final bloc = BlockagentBloc();
  final blocRemove = AgentListBloc();
  String blockText = "Заблокировать агента";
  String removeText = "Удалить агента";
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
          centerTitle: true,
          title:
              Text("${widget.agentName.toUpperCase()}   -   ${widget.number}"),
        ),
        body: BlocProvider(
          create: (context) => blocRemove,
          child: BlocConsumer<AgentListBloc, AgentListState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () => CustomErr(),
                  loaded: (data) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Вы успешно удалили агентa"))));
            },
            builder: (context, state) {
              return state.maybeMap(
                  orElse: () => CustomErr(),
                  initial: (_) => Container(
                        padding: EdgeInsets.all(15),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            CustomContainer(
                                onTap: () => showDialog<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          content: const Text(
                                              "Вы уверены, что хотите удалить агента?"),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text("Нет")),
                                            TextButton(
                                                onPressed: remove,
                                                child: Text("Да")),
                                          ],
                                        );
                                      },
                                    ),
                                text: removeText,
                                color: Colors.blueAccent),
                            SizedBox(
                              height: 30,
                            ),
                            BlocProvider(
                              create: (context) => bloc,
                              child:
                                  BlocConsumer<BlockagentBloc, BlockagentState>(
                                listener: (context, state) {
                                  state.maybeWhen(
                                      orElse: () => CustomErr(),
                                      loaded: (data) => ScaffoldMessenger.of(
                                              context)
                                          .showSnackBar(SnackBar(
                                              content: Text(
                                                  "Вы успешно заблокировали агентa"))));
                                },
                                builder: (context, state) {
                                  return state.maybeMap(
                                      orElse: () => CustomErr(),
                                      initial: (_) => widget.block == true
                                          ? CustomContainer(
                                              onTap: block,
                                              text: "Агент заблокирован",
                                              color: Colors.red,
                                            )
                                          : CustomContainer(
                                              onTap: block,
                                              text: blockText,
                                              color: Colors.blueAccent,
                                            ),
                                      loading: (_) => CustomLoading(),
                                      loaded: (data) => data.massage ==
                                              "Агент успешно заблокирован"
                                          ? CustomContainer(
                                              onTap: block,
                                              text: "${data.massage}",
                                              color: Colors.red,
                                            )
                                          : CustomContainer(
                                              onTap: block,
                                              text: "${data.massage}",
                                              color: Colors.blueAccent,
                                            ),
                                      error: (error) => CustomContainer(
                                            onTap: () {},
                                            text: "${error.exception.message} ",
                                            color: Colors.red,
                                          ));
                                },
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            PopupButton()
                          ],
                        ),
                      ),
                  // loading: (_) => CustomLoading(),
                  delete: (data) => Container(
                        padding: EdgeInsets.all(15),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            CustomContainer(
                              onTap: () {},
                              text: "${data.model}",
                              color: Colors.red,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            PopupButton()
                          ],
                        ),
                      ),
                  field: (error) => CustomContainer(
                        onTap: () {},
                        text: "${error.exception.message} ",
                        color: Colors.red,
                      ));
            },
          ),
        ),
      ),
    );
  }

  void block() {
    widget.block = !widget.block;
    bloc.add(BlockagentEvent.block(widget.block, widget.id));
    print("status block - ${widget.block}");
  }

  void remove() {
    blocRemove.add(AgentListEvent.deleteAgent(widget.id));
    Navigator.of(context).pop();
  }
}

class PopupButton extends StatelessWidget {
  const PopupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => AgentsScreen())),
        child: Text("Нажмите, чтобы вернуться на предыдущий экран"));
  }
}
