import 'package:flutter/material.dart';
import 'package:project_manajemen_cuti/common_widgets/cuti_card.dart';
import 'package:project_manajemen_cuti/providers/kuota_cuti_provider.dart';
import 'package:provider/provider.dart';

class KuotaCutiScreen extends StatelessWidget {
  const KuotaCutiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;

    final kuotaProvider = Provider.of<KuotaCutiProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuota Cuti'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: maxWidth,
        height: maxHeight,
        child: Column(
          children: [
            CutiCard(
              title: 'Kuota Cuti Tahunan',
              value: kuotaProvider.data.kuotaCutiTahunan,
            ),
            CutiCard(
              title: 'Cuti Terpakai',
              value: kuotaProvider.data.cutiTerpakai,
            ),
            CutiCard(
              title: 'Sisa Cuti',
              value: kuotaProvider.data.kuotaCutiTahunan -
                  kuotaProvider.data.cutiTerpakai,
            ),
          ],
        ),
      ),
    );
  }
}
