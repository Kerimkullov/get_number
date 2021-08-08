import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_number/components/again_screen.dart';
import 'package:get_number/components/custom_loading.dart';
import 'package:get_number/logic/bloc/get_sms/get_sms_bloc.dart';

class GetSmsScreen extends StatefulWidget {
  GetSmsScreen({Key? key, this.msisdn}) : super(key: key);
  final String? msisdn;

  @override
  _GetSmsScreenState createState() => _GetSmsScreenState();
}

class _GetSmsScreenState extends State<GetSmsScreen> {
  final bloc = GetSmsBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Страница СМС"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: BlocProvider<GetSmsBloc>(
          create: (context) => bloc..add(GetSmsEvent.getSms(widget.msisdn!)),
          child: BlocConsumer<GetSmsBloc, GetSmsState>(
            listener: (context, state) {
              state.maybeWhen(
                  error: (error) => {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error.message.toString())))
                      },
                  orElse: () {});
            },
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => AgainScreen(
                  tryAgain: getData,
                ),
                initial: (_) => CustomLoading(),
                loaded: (data) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data.model.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 32),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  void getData() {
    bloc.add(GetSmsEvent.getSms(widget.msisdn!));
  }
}
