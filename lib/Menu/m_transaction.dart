import 'package:flutter/material.dart';
import 'package:my_finance/Menu/Cls/c_tujuan.dart';
import 'package:my_finance/tools.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaksi"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: screen.width,
                    height: screen.height * 0.075,
                    child: SearchBar(
                      hintText: "Tujuan Transaksi",
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(8.0)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      leading: Container(
                          margin: const EdgeInsets.all(8.0),
                          child: const Icon(Icons.search)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                  ),
                );
              },
              suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
                return List.generate(
                  5,
                  (index) => Container(),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                title: const Text("Transaksi ke Tujuan Baru"),
                textColor: Colors.white,
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
                tileColor: Colors.blue,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => TujuanBaru()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Tools.importantText(text: 'Daftar Tujuan'),
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: screen.height * 0.48,
                child: ListView.separated(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: const Text("Nama Tujuan"),
                      subtitle: const Text("Nomor Account Tujuan"),
                      onTap: () {},
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
