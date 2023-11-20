import 'package:go_router/go_router.dart';
import 'package:project_manajemen_cuti/screens/ajukan_cuti/ajukan_cuti_screen.dart';
import 'package:project_manajemen_cuti/screens/cuti_diajukan/cuti_diajukan_screen.dart';
import 'package:project_manajemen_cuti/screens/home/home_screen.dart';
import 'package:project_manajemen_cuti/screens/kuota_cuti/kuota_cuti_screen.dart';
import 'package:project_manajemen_cuti/screens/list_cuti/list_cuti_screen.dart';
import 'package:project_manajemen_cuti/screens/profil/profil_screen.dart';

part 'routes.dart';

class AppRoute {
  static const String home = 'home';
  static const String listCuti = 'list-cuti';
  static const String kuotaCuti = 'kuota-cuti';
  static const String ajukanCuti = 'ajukan-cuti';
  static const String profil = 'profil';
  static const String cutiDiajukan = 'cuti-diajukan';
}
