import 'package:flutter/material.dart';
import 'package:get_number/components/custom_button.dart';

class AgainScreen extends StatelessWidget {
  const AgainScreen({Key? key, this.tryAgain}) : super(key: key);
  final Function? tryAgain;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error, size: 112),
          SizedBox(height: 16),
          Text("OOPS, что то пошло не так"),
          SizedBox(height: 32),
          CustomButton(
            color: Colors.blue,
            onTap: tryAgain,
            child: Text("Попробовать снова",
                style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
