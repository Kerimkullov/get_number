import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_number/components/custom_loading.dart';
import 'package:get_number/logic/bloc/deactivate_number_bloc/deactivate_number_bloc.dart';
import 'package:get_number/screen.dart/get_number_screen/get_number_screen.dart';

import 'number_history_screen.dart';

class DeactivateScreen extends StatefulWidget {
  DeactivateScreen({Key? key, required this.number}) : super(key: key);
  final String number;
  @override
  _DeactivateScreenState createState() => _DeactivateScreenState();
}

class _DeactivateScreenState extends State<DeactivateScreen> {
  final bloc = DeactivateNumberBloc();
  Future<bool> _onWillPop() async {
    await Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => GetHistoryOfNumbers()));
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
                MaterialPageRoute(builder: (context) => GetHistoryOfNumbers())),
          ),
          title: Text("Деактивация - ${widget.number}"),
        ),
        body: Center(
          child: BlocProvider<DeactivateNumberBloc>(
            create: (context) =>
                bloc..add(DeactivateNumberEvent.deactivate(widget.number)),
            child: BlocConsumer<DeactivateNumberBloc, DeactivateNumberState>(
              listener: (context, state) {
                state.maybeWhen(
                    orElse: () {},
                    loaded: (data) => ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(
                            content: Text("Вы успешно деактивировали номер"))));
              },
              builder: (context, state) {
                return state.maybeMap(
                    orElse: () => Center(
                          child: Text("Ошибка"),
                        ),
                    loading: (_) => CustomLoading(),
                    loaded: (data) => Center(
                          child: Column(children: [
                            Text(
                              "${data.massage} деактивирован",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextButton(
                                onPressed: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            GetHistoryOfNumbers())),
                                child: Text("Вернуться на пред страницу",
                                    style: TextStyle(fontSize: 20)))
                          ]),
                        ),
                    error: (error) => Center(
                          child: Text(
                            error.exception.message.toString(),
                            style: TextStyle(fontSize: 20),
                          ),
                        ));
              },
            ),
          ),
        ),
      ),
    );
  }
}
