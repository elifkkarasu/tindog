import 'package:flutter/material.dart';
import 'package:tindog/views/petviews/pet_view.dart';
import 'package:tindog/views/petviews/pet_view1.dart';
import 'package:tindog/views/petviews/pet_view2.dart';
import 'package:tindog/views/petviews/pet_view3.dart';
import 'package:tindog/views/petviews/pet_view4.dart';
import 'package:tindog/views/petviews/pet_view5.dart';
import 'package:tindog/views/profile.dart';

class PetSelectionView extends StatefulWidget {
  const PetSelectionView({super.key});

  @override
  State<PetSelectionView> createState() => _PetSelectionViewState();
}

class _PetSelectionViewState extends State<PetSelectionView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/petselectionbackground.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(248, 200, 220, 40),
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.person),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileView(),
                        ),
                      );
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                },
              ),
              title: Padding(
                padding: const EdgeInsets.all(70),
                child: Image.asset('assets/images/icon.png'),
              ),
              actions: const [],
            ),
            body: GridView.count(
              crossAxisCount: 2,
              children: [
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PetView(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Image.asset('assets/images/eskimodog.jpg'),
                        ),
                        const SizedBox(
                          child: Text('İsim: Moris\nCins: Amerikan Eskimo'),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PetView1(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Image.asset(
                            'assets/images/pugdog.jpg',
                          ),
                        ),
                        const SizedBox(
                          child: Text('İsim: Edgar\nCins: Pug'),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PetView2(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Image.asset(
                            'assets/images/goldenretrieverdog.jpg',
                          ),
                        ),
                        const SizedBox(
                          child: Text('İsim: Yellow\nCins: Golden Retriever'),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PetView3(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Image.asset(
                            'assets/images/shibadog.jpg',
                          ),
                        ),
                        const SizedBox(
                          child: Text('İsim: Maço\nCins: Shiba'),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PetView4(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Image.asset(
                            'assets/images/bullmastifdog.jpg',
                          ),
                        ),
                        const SizedBox(
                          child: Text('İsim: Patron\nCins: Bullmastif'),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PetView5(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Image.asset('assets/images/beagledog.jpg'),
                        ),
                        const SizedBox(
                          child: Text('İsim: Zeytin\nCins: Beagle'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
