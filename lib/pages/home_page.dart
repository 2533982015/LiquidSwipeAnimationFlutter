import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> slides = [
      Container(
        width: double.infinity,
        color: _randomColor(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _image(
                  'https://playfeel.weebly.com/uploads/1/2/7/2/12725304/coldplay-what-if-cd-single-frontal_orig.jpg'),
              _title('Coldplay'),
              _control(),
            ]),
      ),
      Container(
        width: double.infinity,
        color: _randomColor(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _image(
                  'https://i.pinimg.com/564x/46/6b/97/466b97943e9eb867d2d777b6a4978fa0.jpg'),
              _title('ACDC'),
              _control(),
            ]),
      ),
      Container(
        width: double.infinity,
        color: _randomColor(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _image(
                  'https://www.lahiguera.net/musicalia/artistas/varios/disco/7097/armin_van_buuren_embrace-portada.jpg'),
              _title('Armin Van Buuren'),
              _control(),
            ]),
      ),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          elevation: 0,
        ),
        body: LiquidSwipe(
          pages: slides,
          enableLoop: true,
          fullTransitionValue: 300,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }

  Widget _title(String title) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Text(title),
      );

  Widget _image(String image) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0),
        child: Image.network(image, width: 300),
      );

  Widget _control() => Wrap(
          direction: Axis.horizontal,
          spacing: 30,
          alignment: WrapAlignment.center,
          children: const [
            Icon(Icons.arrow_left_rounded, color: Colors.white, size: 48),
            Icon(Icons.play_arrow_rounded, color: Colors.white, size: 48),
            Icon(Icons.arrow_right_rounded, color: Colors.white, size: 48),
          ]);

  Color _randomColor() =>
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
}
