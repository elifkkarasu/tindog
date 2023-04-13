import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tindog/views/dashboard.dart';
import 'package:tindog/views/login_view.dart';
import 'package:tindog/views/petselection_view.dart';
import 'utils.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1290;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(248, 200, 220, 40),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.pets),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PetSelectionView(),
                  ),
                );
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Padding(
          padding: const EdgeInsets.all(30),
          child: Image.asset('assets/images/icon.png'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.dashboard),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DashboardView(),
                ),
              );
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
          IconButton(
            onPressed: () async {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginView(),
                ),
              );
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          // profileiN9 (19:5)
          width: double.infinity,
          height: 2962 * fem,
          child: Stack(
            children: [
              Positioned(
                // background27w (19:6)
                left: 0 * fem,
                top: 6 * fem,
                child: Align(
                  child: SizedBox(
                    width: 1290 * fem,
                    height: 2796 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45 * fem),
                        color: const Color(0xfff8c8dc),
                        gradient: const LinearGradient(
                          begin: Alignment(0.686, -1),
                          end: Alignment(-0.112, 1),
                          colors: <Color>[Color(0x33ff0000), Color(0x33ff0000)],
                          stops: <double>[0.458, 0.771],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // appbar1Vf (29:33)
                left: 0 * fem,
                top: 0 * fem,
                child: Container(
                  width: 1290 * fem,
                  height: 223.07 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // appbar5kR (29:34)
                        left: 0 * fem,
                        top: 6 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 1290 * fem,
                            height: 217.07 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0x66f8c8dc),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(45 * fem),
                                  topRight: Radius.circular(45 * fem),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // youngwomaninparkwithherwhitedo (31:184)
                left: 0 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 1290 * fem,
                    height: 640 * fem,
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // ellipse2e6h (31:188)
                left: 25 * fem,
                top: 427 * fem,
                child: Align(
                  child: SizedBox(
                    width: 464 * fem,
                    height: 464 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(232 * fem),
                        color: const Color(0xffd9d9d9),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/pp.jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // bilgilerya24konumistanbularadt (31:194)
                left: 79 * fem,
                top: 1000 * fem,
                child: Align(
                  child: SizedBox(
                    width: 1162 * fem,
                    height: 1794 * fem,
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont(
                          'Calistoga',
                          fontSize: 90 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2999999152 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                        children: [
                          TextSpan(
                            text: 'Bilgiler:\n',
                            style: SafeGoogleFont(
                              'Calistoga',
                              fontSize: 90 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3 * ffem / fem,
                              color: Color(0xff263238),
                            ),
                          ),
                          TextSpan(
                            text: '\n',
                            style: SafeGoogleFont(
                              'Calistoga',
                              fontSize: 60 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                          TextSpan(
                            text:
                                'İsim: Zehra Yılmaz \nYaş: 24 \nKonum: İstanbul\nAradığı tür: Herhangi\n',
                            style: SafeGoogleFont(
                              'Calistoga',
                              fontSize: 60 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3 * ffem / fem,
                              color: Color(0xfffff8fb),
                            ),
                          ),
                          TextSpan(
                            text: '\nSahip olunan evcil hayvan(lar):\n',
                            style: SafeGoogleFont(
                              'Calistoga',
                              fontSize: 60 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3 * ffem / fem,
                              color: Color(0xff263238),
                            ),
                          ),
                          TextSpan(
                            text: 'Sibirya Kurdu\n',
                            style: SafeGoogleFont(
                              'Calistoga',
                              fontSize: 60 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3 * ffem / fem,
                              color: Color(0xfffff8fb),
                            ),
                          ),
                          TextSpan(
                            text:
                                '\nEvcil hayvana ayırabileceği zaman aralığı:\n',
                            style: SafeGoogleFont(
                              'Calistoga',
                              fontSize: 60 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3 * ffem / fem,
                              color: Color(0xff263238),
                            ),
                          ),
                          TextSpan(
                            text: '5-7 saat\n',
                            style: SafeGoogleFont(
                              'Calistoga',
                              fontSize: 60 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3 * ffem / fem,
                              color: Color(0xfffff8fb),
                            ),
                          ),
                          TextSpan(
                            text: '\n',
                            style: SafeGoogleFont(
                              'Calistoga',
                              fontSize: 90 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                          TextSpan(
                            text: '\n',
                            style: SafeGoogleFont(
                              'Calistoga',
                              fontSize: 60 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                          TextSpan(
                            text: '\n\n\n\n\n\n',
                            style: SafeGoogleFont(
                              'Calistoga',
                              fontSize: 90 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle10GYd (31:195)
                left: 32 * fem,
                top: 1930 * fem,
                child: Align(
                  child: SizedBox(
                    width: 1226 * fem,
                    height: 569 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(125 * fem),
                        color: Color(0xfffff8fb),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // merhababenzehraloremipsumdolor (31:196)
                left: 108 * fem,
                top: 2000 * fem,
                child: Align(
                  child: SizedBox(
                    width: 1162 * fem,
                    height: 358 * fem,
                    child: Text(
                      'Merhaba ben Zehra. Lorem ipsum dolor ak, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',
                      style: SafeGoogleFont(
                        'Calistoga',
                        fontSize: 55 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3 * ffem / fem,
                        color: Color(0xff263238),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
