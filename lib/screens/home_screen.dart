import 'package:campo_minado/screens/sobre_screen.dart';
import 'package:flutter/material.dart';
import 'campo_minado_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

void openGame(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return CampoMinadoApp();
    },
  ));
}

void openSobre(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return SobreScreen();
    },
  ));
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'CAMPO MINADO',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Image(image: AssetImage('assets/images/fechado.jpeg')),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Padding(
                  padding: const EdgeInsets.only(top: 64),
                  child: RaisedButton(
                    onPressed: () {
                      openGame(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 32,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'JOGAR',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 8.0),
                          const Icon(
                            Icons.gamepad,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    color: Colors.orange,
                    shape: StadiumBorder(),
                  ),
                ),
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: FlatButton(
                  onPressed: () {
                    openSobre(context);
                  },
                  child: Text(
                    'SOBRE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  shape: StadiumBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
