import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wisdom_well/core/routes/auto_router.dart';
import 'package:wisdom_well/core/services/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await ServiceLocator.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wisdom Well',
      routerConfig: sl<AppRouter>().config(),
    );
  }
}
