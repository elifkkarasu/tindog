import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tindog/views/login_view.dart';
import 'package:tindog/views/petselection_view.dart';
import '../firebase_options.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _passwordagain;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _passwordagain = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _passwordagain.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          return Container(
            padding: const EdgeInsets.only(top: 350, left: 24, right: 24),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Signup.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: TextField(
                    controller: _email,
                    enableSuggestions: false,
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                      hintText: "E-mail Adresi",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: TextField(
                    controller: _password,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      hintText: "Şifre",
                    ),
                  ),
                ),
                TextField(
                  controller: _passwordagain,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    hintText: "Şifre(Tekrar)",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 135),
                  child: FilledButton(
                    onPressed: () async {
                      final email = _email.text;
                      final password = _password.text;
                      final passwordagain = _passwordagain.text;
                      if (password == passwordagain) {
                        await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: email,
                          password: password,
                        );
                        if (context.mounted) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PetSelectionView(),
                            ),
                          );
                        }
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(187, 154, 247, 80)),
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(210, 40)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0),
                      )),
                    ),
                    child: const Text(
                      "Kayıt ol",
                      style: TextStyle(fontSize: 20),
                      selectionColor: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginView(),
                      ),
                    );
                  },
                  child: const Text("Zaten Üyeyim"),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
