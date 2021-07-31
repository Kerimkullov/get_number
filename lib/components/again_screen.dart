import 'package:flutter/material.dart';
import 'package:get_number/components/custom_button.dart';

class AgainScreen extends StatelessWidget {
  const AgainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error, size: 56),
          SizedBox(height: 16),
          Text("OOPS, что то пошло не так"),
          SizedBox(height: 32),
          CustomButton(
            onTap: () {},
            child: Text("Попробовать снова"),
          )
        ],
      ),
    );
  }
}
