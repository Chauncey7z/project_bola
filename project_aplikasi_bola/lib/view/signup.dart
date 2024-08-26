import 'package:flutter/material.dart';
import 'package:project_aplikasi_bola/view_model/user_vm.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(16),
        child: _signupPage(userViewModel),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: SizedBox(
      //     width: double.infinity,
      //     child: FloatingActionButton.extended(
      //         onPressed: () {}, label: Text("Continue")),
      //   ),
      // ),
    );
  }

  _signupPage(UserViewModel userViewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Create an Account",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Enter email and password. If you forget then you have to do forgot password.",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Email",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: emailController,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Password",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: passwordController,
        ),
        SizedBox(
          height: 16,
        ),
        // Text(
        //   "Confirm Password",
        //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        // ),
        // SizedBox(
        //   height: 8,
        // ),
        // TextFormField(),
        // SizedBox(
        //   height: 8,
        // ),
        Expanded(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  userViewModel.signup(
                      emailController.text, passwordController.text);
                },
                child: Text("Continue"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
