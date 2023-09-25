import 'package:flutter/material.dart';
import 'package:sneakers_app/singup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // Korkeus ja leveys muuttujat
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    final LinearGradient scaffoldGradient = LinearGradient(
      colors: [
        const Color.fromARGB(255, 96, 96, 255),
        const Color.fromARGB(255, 228, 0, 83)
      ], // Gradientin värit
      begin: Alignment.topLeft, // Alkupiste
      end: Alignment.bottomRight, // Loppupiste
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: scaffoldGradient,
        ),
        child: Column(
          children: [
            // Kuva container
            Container(
              width: w,
              height: h * 0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Sneakers.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              // Teksti container
              width: w,
              margin: const EdgeInsets.only(left: 22, right: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hei!',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Kirjaudu sisään',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 30, // Tilaa ennen textinputteja
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 25), // Marginaali
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Text(
                        'Unohditko salasanan',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                      height: 20), // Lisää tilaa ennen kirjautumispainiketta
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15), // Koko
                        primary: const Color.fromARGB(255, 0, 247, 255),
                        onPrimary: Colors.white, // Tekstin väri
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        visualDensity: VisualDensity.compact,
                      ),
                      child: Container(
                        width: double.infinity, // Täytä koko leveys
                        alignment: Alignment.center,
                        child: Text(
                          'Kirjaudu',
                          style: TextStyle(fontSize: 20), // Tekstin koko
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ));
                    },
                    child: Text(
                      'Rekisteröidy',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
