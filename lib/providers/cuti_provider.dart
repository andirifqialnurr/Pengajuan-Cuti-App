import 'package:flutter/material.dart';
import 'package:project_manajemen_cuti/models/cuti_model.dart';

class CutiDiajukanProvider extends ChangeNotifier {
  List<CutiModel> _data = [];
  List<CutiModel> get data => _data;

  void addData(CutiModel data) {
    _data.add(data);
    notifyListeners();
  }

  void deleteData(int index) {
    final item = _data.firstWhere((item) => item.id == index);
    _data.remove(item);
    notifyListeners();
  }
}
