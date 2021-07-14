import 'package:flutter/material.dart';
import 'package:get_number/components/custom_button.dart';
import 'package:get_number/screen.dart/auth/auth_password_screen.dart';

class AuthNumberScreen extends StatefulWidget {
  @override
  _AuthNumberScreenState createState() => _AuthNumberScreenState();
}

class _AuthNumberScreenState extends State<AuthNumberScreen> {
  TextEditingController msisdnController = TextEditingController();
  bool checkedValue = false;

  @override
  void initState() {
    super.initState();
    // msisdnController.addListener(() {
    //   if (numberLen < msisdnController.text.length) {
    //     isDeletingSymbol = false;
    //   } else {
    //     isDeletingSymbol = true;
    //   }
    //   numberLen = msisdnController.text.length;
    //   setState(() {
    //     if (isHasError) {
    //       isHasError = false;
    //     }
    //     if (msisdnController.text.length == 11) {
    //       isActiveButton = true;
    //     } else {
    //       isActiveButton = false;
    //     }
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: msisdnController,
                autofocus: true,
                textInputAction: TextInputAction.next,
                inputFormatters: [],
                keyboardType: TextInputType.number,
                maxLength: 11,
                style: TextStyle(fontSize: 14.0),
                decoration: InputDecoration(
                  counterText: "",
                  prefix: Text("+996 "),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
              SizedBox(height: 32),
              CustomButton(
                color: Colors.blue,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AuthPasswordScreen())),
                child:
                    Text("Получить код", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 32),
              CheckboxListTile(
                title: Text("Вход по touch"),
                value: checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = newValue!;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              )
            ],
          ),
        ),
      ),
    );
  }
}
