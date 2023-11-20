import 'package:flutter/material.dart';
import 'package:project_manajemen_cuti/data/list_cuti_repository.dart';

class ListCutiProvider extends ChangeNotifier {
  final List _data = [];
  List get data => _data;

  Future<void> fetch() async {
    final result = await ListCutiRepository().getHariLibur();
    _data.addAll(result);
    notifyListeners();
  }
}
