import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                label: Text("Username"),
                hintText: "Masukkan Username Kamu",
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              controller: passwordController,
              obscureText: isObscure,
              decoration: InputDecoration(
                label: Text("Password"),
                hintText: "Masukkan Passwoord Kamu",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    // Cara Pertama
                    // isObscure = !isObscure;

                    //Cara kedua
                    if (isObscure == true) {
                      setState(() {
                        isObscure = false;
                      });
                    } else {
                      setState(() {
                        isObscure = true;
                      });
                    }
                  },
                  icon: Icon(isObscure == false
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // // replace halaman ini dan pindah ke halaman product list
                Navigator.pushReplacementNamed(context, '/product-list');

                // hanya pindah ke halaman product list dan bisa
                // balik lagi ke register screen
                // Navigator.pushNamed(context, '/product-list');

              },
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
