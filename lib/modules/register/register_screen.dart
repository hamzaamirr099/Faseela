import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class RegisterScreen extends StatefulWidget {

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmController = TextEditingController();
  var descriptionController = TextEditingController();

  bool firstClicked = false;
  bool secondtClicked = false;
  bool thirdClicked = false;
  bool isPassword1 = true;
  bool isPassword2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: const Text("Welcome to Faseela"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0,),
              defaultTextField(
                keyboardType: TextInputType.name,
                ctr: nameController,
                label: "Full name",
                prefix: Icons.drive_file_rename_outline
              ),
              const SizedBox(height: 15.0),
              defaultTextField(
                keyboardType: TextInputType.emailAddress,
                ctr: emailController,
                label: "Email",
                prefix: Icons.email,
              ),
              const SizedBox(height: 15.0),
              defaultTextField(
                  keyboardType: TextInputType.visiblePassword,
                  label: "Password",
                  ctr: passwordController,
                  prefix: Icons.lock,
                  suffix:
                  isPassword1 ? Icons.visibility_off : Icons.visibility,
                  isPassword: isPassword1,
                  visiblePassword: () {
                    setState(() {
                      isPassword1 = !isPassword1;
                    });
                  }
                  ),
              const SizedBox(height: 15.0),
              defaultTextField(
                  keyboardType: TextInputType.visiblePassword,
                  label: "Confirm Password",
                  ctr: confirmController,
                  prefix: Icons.lock,
                  suffix:
                  isPassword2 ? Icons.visibility_off : Icons.visibility,
                  isPassword: isPassword2,
                  visiblePassword: () {
                    setState(() {
                      isPassword2 = !isPassword2;
                    });
                  }),
              const SizedBox(height: 15.0),
              defaultTextField(
                keyboardType: TextInputType.phone,
                ctr: phoneController,
                label: "Phone number",
                prefix: Icons.phone,
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  Expanded(
                    child: defaultButton(
                        onPressed: (){
                          setState(() {
                            firstClicked = !firstClicked;
                            if(firstClicked){
                              secondtClicked = false;
                              thirdClicked = false;
                            }
                          });
                        },
                      color: firstClicked? Colors.green: Colors.grey,
                      text: "Volunteer",
                    ),
                  ),
                  const SizedBox(width: 5.0,),
                  Expanded(
                    child: defaultButton(
                      onPressed: (){
                        setState(() {
                          secondtClicked = !secondtClicked;
                          if(secondtClicked){
                            firstClicked = false;
                            thirdClicked = false;
                          }
                        });
                      },
                      color: secondtClicked? Colors.green: Colors.grey,
                        text: "Charity",
                    ),
                  ),
                  const SizedBox(width: 5.0,),
                  Expanded(
                    child: defaultButton(
                      onPressed: (){
                        setState(() {
                          thirdClicked = !thirdClicked;
                          if(thirdClicked){
                            firstClicked = false;
                            secondtClicked = false;
                          }
                        });
                      },
                      color: thirdClicked? Colors.green: Colors.grey,
                        text: "Company",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              defaultTextField(
                keyboardType: TextInputType.text,
                ctr: descriptionController,
                label: "Description",
                maxlines: 5,
                prefix: null,
              ),
              const SizedBox(height: 15.0),
              defaultButton(
                onPressed: (){},
                text: "Register",
                width: double.infinity,
                color: Colors.red,
                height: 40.0,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
