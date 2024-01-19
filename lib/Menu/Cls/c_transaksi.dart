import 'package:flutter/material.dart';
import 'package:my_finance/Types/t_types.dart';
import 'package:my_finance/tools.dart';

class TransaksiTujuan extends StatefulWidget {
  const TransaksiTujuan(
      {super.key, required this.namaTujuan, required this.accTujuan});

  final String namaTujuan;
  final String accTujuan;

  @override
  State<TransaksiTujuan> createState() => _TransaksiTujuanState();
}

class _TransaksiTujuanState extends State<TransaksiTujuan> {
  TextEditingController nominalController = TextEditingController();
  TextEditingController remarkController = TextEditingController();
  late String dropdownString;

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaksi Tujuan'),
      ),
      body: Container(
        width: screen.width,
        height: screen.height * 0.9,
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text(widget.namaTujuan),
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              subtitle: Text(widget.accTujuan),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownMenu(
                width: screen.width * 0.95,
                onSelected: (s) {
                  dropdownString = s!;
                },
                dropdownMenuEntries: Types.category
                    .map((e) => DropdownMenuEntry(value: e, label: e))
                    .toList(),
              ),
            ),
            Tools.customTextField(
              controller: nominalController,
              labelText: 'Nominal',
            ),
            Tools.customTextField(
              controller: remarkController,
              labelText: "Notes",
              maxLines: 3,
            ),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(screen.width * 0.9, screen.height * 0.08),
                ),
              ),
              onPressed: () {},
              child: Text("Konfirmasi Transaksi"),
            )
          ],
        ),
      ),
    );
  }
}
