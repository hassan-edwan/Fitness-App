import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/exercise_screen.dart';
import 'screens/progress_screen.dart';
import 'screens/community_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar Navigation',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/exercises': (context) => const ExerciseScreen(),
        '/progress': (context) => const ProgressScreen(),
        '/community': (context) => const CommunityScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
