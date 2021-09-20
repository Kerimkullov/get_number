import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_number/components/%20custom_container.dart';
import 'package:get_number/screen.dart/get_history_screen/deactivate_screen.dart';
import 'package:get_number/screen.dart/get_sms_screen/get_sms_screen.dart';

import 'number_history_screen.dart';

// class DetailNuberScreen extends StatefulWidget {
//   DetailNuberScreen({Key? key, required this.numer}) : super(key: key);
//   final String numer;

//   @override
//   _DetailNuberScreenState createState() => _DetailNuberScreenState();
// }

// class _DetailNuberScreenState extends State<DetailNuberScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: new IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () => Navigator.pushReplacement(context,
//               MaterialPageRoute(builder: (context) => GetHistoryOfNumbers())),
//         ),
//         title: Text("Инфо по ${widget.numer}"),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(15),
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Center(
//           child: Column(
//             children: [
//               CustomContainer(
//                   onTap: () => Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) =>
//                               GetSmsScreen(msisdn: widget.numer))),
//                   text: "История сообщений",
//                   color: Colors.blueAccent),
//               SizedBox(
//                 height: 30,
//               ),
//               CustomContainer(
//                   onTap: () => showDialog<void>(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return AlertDialog(
//                             content: const Text(
//                                 "Вы уверены, что хотите деактивировать этот номер?"),
//                             actions: [
//                               TextButton(
//                                   onPressed: () {
//                                     Navigator.of(context).pop();
//                                   },
//                                   child: Text("Нет")),
//                               TextButton(
//                                   onPressed: () {
//                                     Navigator.of(context)
//                                         .popUntil((route) => route.isFirst);
//                                     Navigator.pushReplacement(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) =>
//                                                 DeactivateScreen(
//                                                     number: widget.numer)));
//                                   },
//                                   child: Text("Да")),
//                             ],
//                           );
//                         },
//                       ),
//                   text: "Деактивировать этот номер",
//                   color: Colors.blueAccent),
//               SizedBox(
//                 height: 30,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class DetailNuberScreen extends StatelessWidget {
  const DetailNuberScreen({Key? key, required this.numer}) : super(key: key);
  final String numer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => GetHistoryOfNumbers())),
        ),
        title: Text("Инфо по $numer"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            children: [
              CustomContainer(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GetSmsScreen(msisdn: numer))),
                  text: "История сообщений",
                  color: Colors.blueAccent),
              SizedBox(
                height: 30,
              ),
              CustomContainer(
                  onTap: () => showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: const Text(
                                "Вы уверены, что хотите деактивировать этот номер?"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Нет")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .popUntil((route) => route.isFirst);
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DeactivateScreen(
                                                    number: numer)));
                                  },
                                  child: Text("Да")),
                            ],
                          );
                        },
                      ),
                  text: "Деактивировать этот номер",
                  color: Colors.blueAccent),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
