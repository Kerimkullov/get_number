import 'package:flutter/material.dart';
import 'package:get_number/components/custom_button.dart';
import 'package:get_number/screen.dart/agent/agents_screen.dart';
import 'package:get_number/screen.dart/auth/auth_password_screen.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthNumberScreen extends StatefulWidget {
  @override
  _AuthNumberScreenState createState() => _AuthNumberScreenState();
}

class _AuthNumberScreenState extends State<AuthNumberScreen> {
  TextEditingController msisdnController = TextEditingController();
  var maskFormatter = new MaskTextInputFormatter(
      mask: ' (###) ###-###', filter: {"#": RegExp(r'[0-9]')});
  ValueNotifier<bool> checkedValue = ValueNotifier<bool>(true);

  bool bioActual = false;

  @override
  void initState() {
    checkBio();

    super.initState();
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
                inputFormatters: [maskFormatter],
                autofocus: true,
                controller: msisdnController,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 14.0),
                decoration: InputDecoration(
                  prefix: Text("+996"),
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
                onTap: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('bio', checkedValue.value);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AuthPasswordScreen()));
                },
                child:
                    Text("Получить код", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 32),
              ValueListenableBuilder(
                valueListenable: checkedValue,
                builder: (context, value, child) => CheckboxListTile(
                  title: Text("Вход по touch"),
                  value: checkedValue.value,
                  onChanged: (newValue) {
                    checkedValue.value = newValue!;
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkBio() async {
    final prefs = await SharedPreferences.getInstance();
    final bioValue = prefs.getBool('bio') ?? false;
    setState(() {
      checkedValue.value = bioValue;
    });
    if (checkedValue.value) {
      bio();
    }
  }

  void bio() async {
    var localAuth = LocalAuthentication();
    bioActual = await localAuth.authenticate(
        localizedReason: 'Авторизация с помощью отпечатка пальца',
        biometricOnly: true);
    if (bioActual == true) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AgentsScreen()));
    } else {
      setState(() {
        checkedValue.value = bioActual;
      });
    }
  }
}
