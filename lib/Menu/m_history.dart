import 'package:flutter/material.dart';
import 'package:my_finance/Types/t_category.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'History',
            ),
          ),
          bottom: TabBar(tabs: [
            Tab(
              text: 'Transaction',
            ),
            Tab(
              text: 'Budget',
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: screen.width * 0.85,
                      height: screen.height * 0.1,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          ...Types.category.map(
                            (e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FilterChip(
                                label: Text(e),
                                selected: true,
                                // repo.all.length == repo.items.length
                                //     ? true
                                //     : state.list
                                //         .any((element) => element.categories == e),
                                onSelected: (bool value) {
                                  // context.read<PageBloc>().add(FilterEvent(e));
                                  // Future.delayed(
                                  //   const Duration(seconds: 1),
                                  //   () => scrollController.animateTo(
                                  //     screenSize.height -
                                  //         scrollController.position.maxScrollExtent,
                                  //     duration: const Duration(milliseconds: 100),
                                  //     curve: Curves.linear,
                                  //   ),
                                  // );
                                },
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: screen.width * 0.15,
                      height: screen.height * 0.1,
                      child: IconButton(
                        icon: Icon(Icons.filter_alt),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Container(
                  width: screen.width,
                  height: screen.height * 0.65,
                  // color: Colors.grey,
                  child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return const ListTile(
                        leading: Icon(
                          Icons.emoji_food_beverage,
                        ),
                        title: Text("Food & Beverage"),
                        subtitle: Text("Rp. 50.000"),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: screen.width * 0.85,
                      height: screen.height * 0.1,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          ...Types.category.map(
                            (e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FilterChip(
                                label: Text(e),
                                selected: true,
                                // repo.all.length == repo.items.length
                                //     ? true
                                //     : state.list
                                //         .any((element) => element.categories == e),
                                onSelected: (bool value) {
                                  // context.read<PageBloc>().add(FilterEvent(e));
                                  // Future.delayed(
                                  //   const Duration(seconds: 1),
                                  //   () => scrollController.animateTo(
                                  //     screenSize.height -
                                  //         scrollController.position.maxScrollExtent,
                                  //     duration: const Duration(milliseconds: 100),
                                  //     curve: Curves.linear,
                                  //   ),
                                  // );
                                },
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: screen.width * 0.15,
                      height: screen.height * 0.1,
                      child: IconButton(
                        icon: Icon(Icons.filter_alt),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Container(
                  width: screen.width,
                  height: screen.height * 0.65,
                  // color: Colors.grey,
                  child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return const ListTile(
                        leading: Icon(
                          Icons.monetization_on_sharp,
                        ),
                        title: Text("Budget"),
                        subtitle: Text("Rp. 50.000"),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
