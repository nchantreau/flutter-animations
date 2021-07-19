import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {

  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          margin: EdgeInsets.all(_margin),
          width: _width,
          color: _color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text('animate margin'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () => setState(() => _margin = 50),
              ),
              ElevatedButton(
                child: Text('animate color'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () => setState(() => _color = Colors.purple),
              ),
              ElevatedButton(
                child: Text('animate width'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () => setState(() => _width = 400),
              ),
              ElevatedButton(
                child: Text('animate opacity'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () => setState(() => _opacity = 0),
              ),
              AnimatedOpacity(
                duration: Duration(seconds: 2),
                opacity: _opacity,
                child: Text(
                  'hide me',
                  style: TextStyle(color: Colors.white)
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}