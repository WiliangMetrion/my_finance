import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screen.width,
        height: screen.height,
        decoration: const BoxDecoration(
          color: Color(0xFFCADDF5),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: screen.height * 0.35,
                width: screen.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 240, 240, 240),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
