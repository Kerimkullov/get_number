import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_number/components/custom_button.dart';
import 'package:get_number/components/custom_loading.dart';
import 'package:get_number/logic/bloc/auth/auth_bloc.dart';
import 'package:get_number/screen.dart/agent/choice_screen.dart';
import 'package:get_number/screen.dart/get_number_screen/get_number_screen.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthNumberScreen extends StatefulWidget {
  @override
  _AuthNumberScreenState createState() => _AuthNumberScreenState();
}

class _AuthNumberScreenState extends State<AuthNumberScreen> {
  TextEditingController msisdnController = TextEditingController();
  final focus = FocusNode();
  TextEditingController passwordController = TextEditingController();
  var maskFormatter = new MaskTextInputFormatter(
      mask: ' (###) ###-###', filter: {"#": RegExp(r'[0-9]')});
  var pinFormatter =
      new MaskTextInputFormatter(mask: '####', filter: {"#": RegExp(r'[0-9]')});
  ValueNotifier<bool> checkedValue = ValueNotifier<bool>(true);
  final bloc = AuthBloc();
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
        child: BlocProvider<AuthBloc>(
          create: (context) => bloc,
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                  field: (error) => {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error.message.toString())))
                      },
                  loaded: (data) async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool('bio', checkedValue.value);
                    prefs.setInt('id', data.id!);
                    checkRole(data.role!);
                  },
                  orElse: () {});
            },
            builder: (context, state) {
              return state.maybeMap(
                  orElse: () => authScreen(),
                  loading: (value) => CustomLoading(),
                  initial: (_) => authScreen());
            },
          ),
        ),
      ),
    );
  }

  Widget authScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
          SizedBox(height: 16),
          TextFormField(
            inputFormatters: [pinFormatter],
            focusNode: focus,
            controller: passwordController,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 14.0),
            decoration: InputDecoration(
              hintText: "?????????????? ?????? ??????",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2)),
            ),
          ),
          SizedBox(height: 32),
          CustomButton(
            color: Colors.blue,
            onTap: () {
              bloc.add(AuthEvent.getAuth(
                  "996" +
                      msisdnController.text
                          .replaceAll(" ", "")
                          .replaceAll(")", "")
                          .replaceAll("(", "")
                          .replaceAll("-", ""),
                  passwordController.text..replaceAll(" ", "")));
            },
            child: Text("??????????", style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 32),
          ValueListenableBuilder(
            valueListenable: checkedValue,
            builder: (context, value, child) => CheckboxListTile(
              title: Text("???????? ???? touch"),
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
    );
  }

  void checkBio() async {
    final prefs = await SharedPreferences.getInstance();
    final bioValue = prefs.getBool('bio') ?? false;
    final role = prefs.getString("role") ?? "";
    setState(() {
      checkedValue.value = bioValue;
    });
    if (checkedValue.value) {
      bio(role);
    }
  }

  void bio(String role) async {
    var localAuth = LocalAuthentication();
    bioActual = await localAuth.authenticate(
        localizedReason: '?????????????????????? ?? ?????????????? ?????????????????? ????????????',
        biometricOnly: true);
    if (bioActual == true) {
      checkRole(role);
    } else {
      setState(() {
        checkedValue.value = bioActual;
      });
    }
  }

  void checkRole(String role) {
    role == "Agent"
        ? Navigator.push(
            context, MaterialPageRoute(builder: (context) => GetNumberScreen()))
        : Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChoiceScreen()));
  }

  @override
  void dispose() {
    msisdnController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
