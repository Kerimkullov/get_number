import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_number/components/again_screen.dart';
import 'package:get_number/components/custom_button.dart';
import 'package:get_number/components/custom_loading.dart';
import 'package:get_number/logic/bloc/get_number/get_number_bloc.dart';
import 'package:get_number/screen.dart/get_sms_screen/get_sms_screen.dart';

class GetNumberScreen extends StatefulWidget {
  GetNumberScreen({Key? key}) : super(key: key);

  @override
  _GetNumberScreenState createState() => _GetNumberScreenState();
}

class _GetNumberScreenState extends State<GetNumberScreen> {
  final bloc = GetNumberBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: BlocProvider<GetNumberBloc>(
          create: (context) => bloc,
          child: BlocConsumer<GetNumberBloc, GetNumberState>(
            listener: (context, state) {
              state.maybeWhen(
                  error: (error) => {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error.message.toString())))
                      },
                  loaded: (data) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Text("Вы успешно получили номер ${data.msisdn}")));
                  },
                  orElse: () {});
            },
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => AgainScreen(
                  tryAgain: getData,
                ),
                loading: (_) => CustomLoading(),
                initial: (_) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Нажмите кнопку получить номер, чтоб сгенерировать вам номер",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 32),
                      CustomButton(
                        color: Colors.blue,
                        onTap: () => getData(),
                        child: Text("Получить номер",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ),
                    ],
                  ),
                ),
                loaded: (data) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data.model.msisdn.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 32),
                      CustomButton(
                        color: Colors.blue,
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    GetSmsScreen(msisdn: data.model.msisdn))),
                        child: Text("Получить SMS",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ),
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

  void getData() {
    bloc.add(GetNumberEvent.getNumber());
  }
}
