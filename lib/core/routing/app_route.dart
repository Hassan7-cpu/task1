import 'package:go_router/go_router.dart';
import 'package:task1/features/gold/presentation/view/gold_view.dart';
import 'package:task1/features/presentatin.dart';
import 'package:task1/features/silver/presentation/view/silver_view.dart';

final router = GoRouter(
  initialLocation: '/presentation',
  routes: [
    GoRoute(
      path: '/presentation',
      builder: (context, state) => const Presentatin(),
    ),
    GoRoute(path: '/gold', builder: (context, state) => const GoldView()),
    GoRoute(path: '/silver', builder: (context, state) => const SilverView()),
  ],
);
