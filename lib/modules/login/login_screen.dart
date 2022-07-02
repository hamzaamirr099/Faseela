import 'package:faseela/modules/register/register_screen.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: const Text(
            "SIGN IN",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20.0),
                  defaultTextField(
                    keyboardType: TextInputType.emailAddress,
                    label: "Enter Email",
                    ctr: emailController,
                    prefix: Icons.email,
                  ),
                  const SizedBox(height: 20.0),
                  defaultTextField(
                    keyboardType: TextInputType.visiblePassword,
                      label: "Enter Password",
                      ctr: passwordController,
                      prefix: Icons.lock,
                      suffix:
                          isPassword ? Icons.visibility_off : Icons.visibility,
                      isPassword: isPassword,
                      visiblePassword: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      }),
                  const SizedBox(height: 20.0),
                  defaultButton(
                      text: "Login",
                      width: double.infinity,
                      height: 40.0,
                      onPressed: () {
                        print(emailController.text);
                        print(passwordController.text);
                      }),
                  const SizedBox(height: 10.0),
                  defaultButton(
                      text: "New user",
                      color: Colors.red,
                      width: double.infinity,
                      height: 40.0,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
