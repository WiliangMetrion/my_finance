import 'package:flutter/material.dart';

import '../tools.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                    height: screen.height * 0.175,
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
                  top: screen.height * 0.125,
                  left: screen.width * 0.05,
                  child: Tools.roundedContainer(
                    screenSize: screen,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              maximumSize:
                                  MaterialStateProperty.all(const Size(64, 64)),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.all(4.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  'Images/budget.png',
                                  scale: 15,
                                  fit: BoxFit.fitWidth,
                                ),
                                Tools.descriptiveText(
                                  text: 'Budget',
                                  fontSize: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: screen.height * 0.275,
                  child: Container(
                    height: screen.height * 0.3,
                    width: screen.width,
                    padding: const EdgeInsets.only(left: 8.0),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 250, 250, 250),
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
                        Row(
                          children: [
                            Tools.descriptiveText(text: 'Last Transactions'),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Tools.descriptiveText(text: 'View All'),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: screen.width,
                          height: screen.height * 0.2,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                surfaceTintColor: Colors.lightBlueAccent,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: screen.width * 0.7,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Tools.descriptiveText(
                                                text: 'Wiliang', fontSize: 20),
                                            Tools.descriptiveText(
                                              text: '250182770',
                                              fontSize: 14,
                                            ),
                                            const Spacer(),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: screen.width * 0.4,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Tools.descriptiveText(
                                                        text: 'Hutang',
                                                        fontSize: 12,
                                                      ),
                                                      Tools.importantText(
                                                        text: 'Rp 9.673.555',
                                                        fontSize: 16,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: screen.width * 0.3,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Tools.descriptiveText(
                                                        text:
                                                            'Tanggal Transaksi',
                                                        fontSize: 12,
                                                      ),
                                                      Tools.importantText(
                                                        text: '2024-01-17',
                                                        fontSize: 16,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: screen.height * 0.625,
                    child: Container(
                      height: screen.height * 0.3,
                      width: screen.width,
                      padding: const EdgeInsets.only(left: 8.0),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 250, 250, 250),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
