import 'package:flutter/material.dart';
import 'package:get_number/components/custom_button.dart';

class GetNumberScreen extends StatefulWidget {
  GetNumberScreen({Key? key}) : super(key: key);

  @override
  _GetNumberScreenState createState() => _GetNumberScreenState();
}

class _GetNumberScreenState extends State<GetNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
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
                onTap: () => {},
                child: Text("Получить номер",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
