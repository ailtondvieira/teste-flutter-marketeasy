import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import './login_controller.dart';

class LoginView extends StatelessWidget {
  final LoginController _loginController = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipPath(
                clipper: WaveClipperOne(flip: true),
                child: Container(
                  height: 120,
                  color: Colors.red,
                  child: Center(
                      child: Text(
                    "Login SisProduct",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: _loginController.userTextController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: 'Usuário',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                          ),
                        ),
                        validator: (value) => value.trim().isEmpty
                            ? 'O usuário é necessário'
                            : null,
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: _loginController.passwordTextController,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: 'Senha',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                          ),
                        ),
                        validator: (value) => value.trim().isEmpty
                            ? 'A senha é necessário'
                            : null,
                      ),
                      SizedBox(height: 16),
                      MaterialButton(
                          color: Colors.white,
                          splashColor: Colors.red[900],
                          height: 45,
                          minWidth: Get.width / 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              _loginController.logar();
                            }
                          })
                    ],
                  ),
                ),
              ),
              
              Stack(
                children: [
                  ClipPath(
                    clipper: WaveClipperOne(reverse: true),
                    child: Container(
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  ClipPath(
                    clipper: WaveClipperOne(flip: true),
                    child: Container(
                      height: 35,
                      color: Colors.red[900],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
