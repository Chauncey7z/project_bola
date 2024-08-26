import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project_aplikasi_bola/res/app_url.dart';

class UserViewModel extends ChangeNotifier {
  bool _loading = false;
  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _passwordController = TextEditingController();
  // String _email = "";
  // String _password = "";

  bool get loading => _loading;
  // TextEditingController get emailController => _emailController;
  // TextEditingController get passwordController => _passwordController;
  // String get email => _email;
  // String get password => _password;

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  // setEmail(String email) async {
  //   _email = email;
  // }

  // setPassword(String password) async {
  //   _password = password;
  // }

  signup(email, password) async {
    var reqBody = {
      "email": email,
      "password": password,
    };

    var resp = await http.post(Uri.parse(AppUrl.signupUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(reqBody));

    var jsonResponse = jsonDecode(resp.body);
    print(jsonResponse['status']);
    notifyListeners();
    return true;
  }
}
