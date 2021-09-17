import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_number/components/again_screen.dart';
import 'package:get_number/components/custom_loading.dart';
import 'package:get_number/logic/bloc/get_history_of_numbers/bloc/history_of_numbers_bloc.dart';
import 'package:get_number/screen.dart/get_history_screen/detail_number_screen.dart';
import 'package:get_number/screen.dart/get_number_screen/get_number_screen.dart';
import 'package:get_number/screen.dart/get_number_screen/get_number_screen_for_agent.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetHistoryOfNumbers extends StatefulWidget {
  GetHistoryOfNumbers({Key? key}) : super(key: key);

  @override
  _GetHistoryOfNumbersState createState() => _GetHistoryOfNumbersState();
}

class _GetHistoryOfNumbersState extends State<GetHistoryOfNumbers> {
  TextEditingController msisdnController = TextEditingController();
  final focus = FocusNode();
  final bloc = HistoryOfNumbersBloc();
  var maskFormatter = new MaskTextInputFormatter(
      mask: ' (###) ###-###', filter: {"#": RegExp(r'[0-9]')});

  Future<String> getRole() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String val = prefs.getString("role") ?? "";

    return val;
  }

  Future<bool> _onWillPop() async {
    await getRole() == "Agent"
        ? Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => GetNumberScreenForAgent()))
        : Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => GetNumberScreen()));
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
                MaterialPageRoute(builder: (context) => GetNumberScreen())),
          ),
          title: Text("История номеров"),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          height: 800,
          width: 800,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  "Поиск номера",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextFormField(
                autofocus: true,
                inputFormatters: [maskFormatter],
                controller: msisdnController,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 14.0),
                onFieldSubmitted: (v) {
                  FocusScope.of(context).requestFocus(focus);
                },
                decoration: InputDecoration(
                  prefix: Text("+996"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                  onPressed: getSearchNumber,
                  child: Text(
                    "Искать",
                    style: TextStyle(fontSize: 25),
                  )),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: BlocProvider<HistoryOfNumbersBloc>(
                  create: (context) =>
                      bloc..add(HistoryOfNumbersEvent.getHistoryNumbers()),
                  child:
                      BlocConsumer<HistoryOfNumbersBloc, HistoryOfNumbersState>(
                    listener: (context, state) {
                      state.maybeWhen(
                          error: (error) => {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content:
                                            Text(error.message.toString())))
                              },
                          loaded: (data) => data.isNotEmpty
                              ? ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content:
                                          Text("Вы успешно получили номерa")))
                              : ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("В истории нет номеров"))),
                          orElse: () {});
                    },
                    builder: (context, state) {
                      return state.maybeMap(
                          loading: (_) => CustomLoading(),
                          loaded: (data) => ListView(
                                children: [
                                  for (int i = 0; i < data.model.length; i++)
                                    buildNumbersCard(
                                        data.model[i].msisdn, i, context),
                                ],
                              ),
                          error: (error) => AgainScreen(
                                tryAgain: getHistoryNumbers,
                              ),
                          search: (searchNumber) => Container(
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () => Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailNuberScreen(
                                                      numer: searchNumber.msisdn
                                                          .toString()))),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.blueAccent,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Icon(
                                              Icons.phone,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              searchNumber.msisdn.toString(),
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    )
                                  ],
                                ),
                              ),
                          searchError: (searchError) => Center(
                                child: Column(
                                  children: [
                                    Text(
                                      'Неправильный номер! \nВведите номер полностью, \nбез "+996"  и без "0"',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    TextButton(
                                        onPressed: getSearchNumber,
                                        child: Text(
                                          "Повторить запрос",
                                          style: TextStyle(fontSize: 20),
                                        ))
                                  ],
                                ),
                              ),
                          orElse: () => Center(
                                child: Text("Ошибка сети"),
                              ));
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNumbersCard(numbers, int index, BuildContext context) {
    return Container(
      child: Column(
        children: [
          Material(
            child: InkWell(
              onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailNuberScreen(numer: numbers))),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                height: 50,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      numbers.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }

  void getHistoryNumbers() {
    bloc.add(HistoryOfNumbersEvent.getHistoryNumbers());
  }

  void getSearchNumber() {
    bloc.add(HistoryOfNumbersEvent.getSearchNumber(
      "996" +
          msisdnController.text
              .replaceAll(" ", "")
              .replaceAll(")", "")
              .replaceAll("(", "")
              .replaceAll("-", ""),
    ));
    print("996${msisdnController.text} ---");
  }
}
