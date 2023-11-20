import 'package:flutter/material.dart';
import 'package:project_manajemen_cuti/providers/cuti_provider.dart';
import 'package:project_manajemen_cuti/providers/kuota_cuti_provider.dart';
import 'package:provider/provider.dart';

class CutiDiajukanScreen extends StatelessWidget {
  const CutiDiajukanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cituDiajukanProvider = Provider.of<CutiDiajukanProvider>(context);
    final kuotaCutiProvider = Provider.of<KuotaCutiProvider>(context);
    final data = cituDiajukanProvider.data;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuti Diajukan'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: data.map(
            (item) {
              final tanggalString = item.tanggal.split(" ");
              return Column(
                children: [
                  ListTile(
                    title: Text(tanggalString[0]),
                    subtitle: Text(item.alasanCuti),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        kuotaCutiProvider.decrementCutiTerpakai();
                        cituDiajukanProvider.deleteData(item.id);
                      },
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
