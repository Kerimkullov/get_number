import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_number/components/custom_button.dart';
import 'package:get_number/components/custom_loading.dart';
import 'package:get_number/logic/bloc/add_agent/add_agent_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'agents_list_screen.dart';

class AddAgentScreen extends StatefulWidget {
  const AddAgentScreen({Key? key}) : super(key: key);

  @override
  _AddAgentScreenState createState() => _AddAgentScreenState();
}

class _AddAgentScreenState extends State<AddAgentScreen> {
  TextEditingController msisdnController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  var maskFormatter = new MaskTextInputFormatter(
      mask: ' (###) ###-###', filter: {"#": RegExp(r'[0-9]')});

  final bloc = AddAgentBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: BlocProvider<AddAgentBloc>(
                  create: (context) => bloc,
                  child: BlocConsumer<AddAgentBloc, AddAgentState>(
                      listener: (context, state) {
                    state.maybeWhen(
                        field: (error) => {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(error.message.toString())))
                            },
                        loaded: (data) async {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(data)));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AgentsScreen()));
                        },
                        orElse: () {});
                  }, builder: (context, state) {
                    return state.maybeMap(
                      orElse: () => CustomLoading(),
                      initial: (_) => addScreen(),
                    );
                  }))),
        ));
  }

  Widget addScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            inputFormatters: [maskFormatter],
            autofocus: true,
            controller: msisdnController,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 14.0),
            decoration: InputDecoration(
              prefix: Text("+996"),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2)),
            ),
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: nameController,
            keyboardType: TextInputType.text,
            style: TextStyle(fontSize: 14.0),
            decoration: InputDecoration(
              hintText: "Введите ваше имя",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2)),
            ),
          ),
          SizedBox(height: 32),
          CustomButton(
            color: Colors.blue,
            onTap: () {
              bloc.add(AddAgentEvent.addAgent(
                  "996" +
                      msisdnController.text
                          .replaceAll(" ", "")
                          .replaceAll(")", "")
                          .replaceAll("(", "")
                          .replaceAll("-", ""),
                  nameController.text));
            },
            child: Text("Добавить", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
