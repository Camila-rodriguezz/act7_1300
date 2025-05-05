import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla 3',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xfff9c7e0),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('¡Regresar!'),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AnimatedPhysicalModel(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  elevation: _isFlat ? 0 : 6.0,
                  shape: BoxShape.rectangle,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  child: const SizedBox(
                    height: 120.0,
                    width: 120.0,
                    child: Icon(Icons.android_outlined),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Click'),
                  onPressed: () {
                    setState(() {
                      _isFlat = !_isFlat;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
