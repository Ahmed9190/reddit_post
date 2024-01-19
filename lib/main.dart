import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:reddit_task/core/injection/injection_container.dart';
import 'package:reddit_task/core/theme/theme_provider.dart';
import 'package:reddit_task/features/post/presentation/screens/post_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.dev);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _themeNotifier = sl<ThemeNotifier>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _themeNotifier,
      builder: (context, _) {
        return MaterialApp(
          title: 'Reddit Task',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
            useMaterial3: true,
          ),
          home: const PostScreen(),
        );
      },
    );
  }
}
