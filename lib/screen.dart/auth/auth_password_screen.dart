import 'package:flutter/material.dart';
import 'package:get_number/components/custom_button.dart';
import 'package:get_number/screen.dart/agent/agents_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AuthPasswordScreen extends StatefulWidget {
  @override
  _AuthPasswordScreenState createState() => _AuthPasswordScreenState();
}

class _AuthPasswordScreenState extends State<AuthPasswordScreen> {
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Введите код из SMS", style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 32,
              ),
              PinCodeTextField(
                appContext: context,
                // enabled: !data.blocked,
                length: 4,
                autoDisposeControllers: false,
                autoFocus: true,
                useHapticFeedback: true,
                obscureText: false,
                animationType: AnimationType.fade,
                enablePinAutofill: true,
                pinTheme: PinTheme(
                  selectedColor: Colors.blue,
                  activeColor: Colors.blue,
                  disabledColor: Colors.transparent,
                  inactiveColor: Colors.grey,
                  selectedFillColor: Colors.transparent,
                  inactiveFillColor: Colors.transparent,
                  activeFillColor: Colors.transparent,
                  shape: PinCodeFieldShape.underline,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                ),
                keyboardType: TextInputType.number,
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                cursorColor: Colors.transparent,
                // errorAnimationController: errorController,
                controller: passwordController,
                onCompleted: (v) {
                  setState(() {});
                },
                onChanged: (value) {},
                beforeTextPaste: (text) {
                  return true;
                },
              ),
              SizedBox(height: 32),
              TextButton(
                  onPressed: () {}, child: Text("Отправить код повторно")),
              SizedBox(height: 32),
              CustomButton(
                color: Colors.blue,
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AgentsScreen())),
                child: Text("Дальше", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
