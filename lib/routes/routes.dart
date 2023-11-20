part of 'app_routes.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'list-cuti',
          name: AppRoute.listCuti,
          builder: (context, state) => const ListCutiScreen(),
        ),
        GoRoute(
          path: 'kuota-cuti',
          name: AppRoute.kuotaCuti,
          builder: (context, state) => const KuotaCutiScreen(),
        ),
        GoRoute(
          path: 'ajukan-cuti',
          name: AppRoute.ajukanCuti,
          builder: (context, state) => const AjukanCutiScreen(),
        ),
        GoRoute(
          path: 'profil',
          name: AppRoute.profil,
          builder: (context, state) => const ProfilScreen(),
        ),
        GoRoute(
          path: 'cuti-diajukan',
          name: AppRoute.cutiDiajukan,
          builder: (context, state) => const CutiDiajukanScreen(),
        ),
      ],
    ),
  ],
);
