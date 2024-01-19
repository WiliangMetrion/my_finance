import 'package:flutter/material.dart';
import 'package:my_finance/Menu/Cls/c_transaksi.dart';
import 'package:my_finance/tools.dart';

class TujuanBaru extends StatefulWidget {
  const TujuanBaru({super.key});

  @override
  State<TujuanBaru> createState() => _TujuanBaruState();
}

class _TujuanBaruState extends State<TujuanBaru> {
  TextEditingController nameController = TextEditingController();
  TextEditingController accController = TextEditingController();
  TextEditingController remarkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tujuan Baru'),
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
            Tools.customTextField(
                controller: nameController, labelText: "Nama"),
            Tools.customTextField(
                controller: accController, labelText: "No. Account"),
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
              onPressed: () {
                // INSERT KE DATABASE DULU
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => TransaksiTujuan(
                        namaTujuan: nameController.text,
                        accTujuan: accController.text),
                  ),
                );
              },
              child: Text("Lanjutkan Transaksi"),
            )
          ],
        ),
      ),
    );
  }
}
