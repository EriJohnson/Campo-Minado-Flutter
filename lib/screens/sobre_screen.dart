import 'package:flutter/material.dart';

class SobreScreen extends StatelessWidget {
  final String urlAvatar =
      'https://avatars3.githubusercontent.com/u/33260479?s=460&u=1d3fb92a5a7784167b2fb86d1c73ac686d35dc15&v=4';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'http://unigrande.edu.br/wp-content/uploads/2019/06/logo-unigrande-app-1024x478.png',
                width: 256,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(urlAvatar),
                    radius: 64,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Eri Johnson',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
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
