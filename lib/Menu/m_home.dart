import 'package:flutter/material.dart';
import 'package:my_finance/tools.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Image.asset(
              'Images/MyFinance.png',
              width: screen.width * 0.5,
              fit: BoxFit.fitWidth,
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(
                Icons.menu,
                size: 36,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: screen.width,
            height: screen.height * 2,
            decoration: const BoxDecoration(
              color: Color(0xFFCADDF5),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    height: screen.height * 0.25,
                    width: screen.width,
                    padding: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Tools.descriptiveText(
                            text: 'Saldo Tabungan', fontSize: 18),
                        Tools.importantText(
                          text: 'Rp 12.038.685',
                          fontSize: 28,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: screen.height * 0.185,
                  left: screen.width * 0.05,
                  child: Container(
                    height: screen.height * 0.12,
                    width: screen.width * 0.9,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 250, 250, 250),
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: const [
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
        ),
      ),
    );
  }
}
