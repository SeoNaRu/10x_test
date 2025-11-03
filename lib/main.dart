import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'providers/inventory_provider.dart';
import 'views/lobby_view.dart';
import 'views/booking_view.dart';
import 'views/my_room_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => InventoryProvider(),
      child: MaterialApp.router(
        title: '놀몬버스',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: _router,
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LobbyView(),
    ),
    GoRoute(
      path: '/booking',
      builder: (context, state) => const BookingView(),
    ),
    GoRoute(
      path: '/myroom',
      builder: (context, state) => const MyRoomView(),
    ),
  ],
);

