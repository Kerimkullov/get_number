import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_number/components/again_screen.dart';
import 'package:get_number/components/custom_loading.dart';
import 'package:get_number/logic/bloc/get_sms/get_sms_bloc.dart';
import 'package:get_number/logic/model/sms_model.dart';

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
        padding: EdgeInsets.all(18),
        child: BlocProvider<GetSmsBloc>(
          create: (context) => bloc..add(GetSmsEvent.getSms(widget.msisdn!)),
          child: BlocConsumer<GetSmsBloc, GetSmsState>(
            listener: (
              context,
              state,
            ) {
              state.maybeWhen(
                  error: (error) => {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error.message.toString())))
                      },
                  orElse: () {});
            },
            builder: (
              context,
              state,
            ) {
              return state.maybeMap(
                orElse: () => AgainScreen(
                  tryAgain: getData,
                ),
                initial: (_) => CustomLoading(),
                loaded: (
                  data,
                ) =>
                    Column(
                  children: [
                    Center(
                      child: TextButton(
                          onPressed: () {
                            context
                                .read<GetSmsBloc>()
                                .add(GetSmsEvent.getSms(widget.msisdn!));
                          },
                          child: Text(
                            "Обновить страницу",
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                    _ListOfMassages(listMassage: data.model)
                  ],
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

  // List<Widget> buildBodySmsChildren(List<SmsModel> list) {
  //   List<Widget>? _list = [];
  //   if (list.isNotEmpty) {
  //     for (SmsModel i in list) {
  //       _list.add(Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Text(
  //               i.message.toString(),
  //               textAlign: TextAlign.center,
  //               style: TextStyle(fontSize: 20),
  //             ),
  //             SizedBox(height: 32),
  //             TextButton(
  //                 onPressed: () {},
  //                 child: Text(text))
  //           ],
  //         ),
  //       ));
  //     }
  //   } else
  //     _list.add(
  //       Center(
  //         child: Column(
  //           children: [
  //             Text("Сообщений нет"),
  //             TextButton(onPressed: () {}, child: Text("Повторить запрос"))
  //           ],
  //         ),
  //       ),
  //     );

  //   print("List is Empty or not $_list");
  //   return _list;
  // }

//   Widget buildBodySms(SmsModel model, int index, BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             alignment: Alignment.center,
//             width: MediaQuery.of(context).size.width,
//             height: 250,
//             color: Colors.blueAccent,
//             child: Text(
//               model.message.toString(),
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 20, color: Colors.white),
//             ),
//           ),
//           Container(
//               alignment: Alignment.center,
//               width: MediaQuery.of(context).size.width,
//               height: 30,
//               color: Colors.blueGrey,
//               child: Text("Дата - ${model.date.toString()}",
//                   style: TextStyle(fontSize: 20, color: Colors.white))),
//           SizedBox(height: 32),
//         ],
//       ),
//     );
//   }
}

class _ListOfMassages extends StatelessWidget {
  const _ListOfMassages({Key? key, required this.listMassage})
      : super(key: key);
  final List<SmsModel> listMassage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: listMassage.length,
          itemBuilder: (_, index) {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    color: Colors.blueAccent,
                    child: Text(
                      listMassage[index].message.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      color: Colors.blueGrey,
                      child: Text(
                          "Дата - ${listMassage[index].date.toString()}",
                          style: TextStyle(fontSize: 20, color: Colors.white))),
                  SizedBox(height: 32),
                ],
              ),
            );
          }),
    );
  }
}
