import 'package:flutter/material.dart';

class PetView extends StatefulWidget {
  const PetView({super.key});

  @override
  State<PetView> createState() => _PetViewState();
}

class _PetViewState extends State<PetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(248, 200, 220, 40),
        title: Padding(
          padding: const EdgeInsets.all(70),
          child: Image.asset('assets/images/icon.png'),
        ),
        actions: const [],
      ),
      backgroundColor: const Color.fromARGB(255, 255, 203, 213),
      body: Center(
        child: Container(
          height: 600,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image.asset('assets/images/eskimodog.jpg'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Moris",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "moris1234",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  FilledButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(65, 30),
                        backgroundColor: const Color(0xFff9A1B1),
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                            vertical: 3.0, horizontal: 0.2)),
                    child: const Text("Antalya",
                        style: TextStyle(
                          fontSize: 13,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when text of the printing and typesetting text of the printing and typesetting Ipsum has been the industry's standard.Simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FilledButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(140, 40),
                      backgroundColor: const Color(0xFff9A1B1),
                      elevation: 0,
                    ),
                    child: const Text(
                      "SAHİPLEN",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
