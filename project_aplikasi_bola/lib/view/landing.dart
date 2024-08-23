import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_aplikasi_bola/routes/routes_name.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: [
              Center(
                child: Image(image: AssetImage('assets/welcome.png')),
              ),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 42),
              ),
              Text(
                "You can see the goal LIVE! Get live match results from your facorite teams in the world most prestigious competitions!",
                style: TextStyle(fontSize: 28),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(RouteName.signUpPage);
                    },
                    child: Text("Sign Up For More"),
                  )),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                    onPressed: () {
                      Get.toNamed(RouteName.loginPage);
                    },
                    child: Text("I Already Have an Account")),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
