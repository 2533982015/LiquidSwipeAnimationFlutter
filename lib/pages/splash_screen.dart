import 'package:flutter/material.dart';
import 'package:liquid_swipe_animation/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /* Cargar pagina */
  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 1500),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /*Diseño del Splash Screen*/
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Spacer(),
            Center(
              child: FractionallySizedBox(
                widthFactor: .6,
                child: Icon(Icons.music_note,
                    size: 200.0, color: Color(0xffE8630A)),
              ),
            ),
            Text("CARGANDO...",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Divider(),
            SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xffE8630A))),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
