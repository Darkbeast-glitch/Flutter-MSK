import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/app_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: const Center(child: Text("Hello, World!")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(themeProvider.notifier).state = !isDarkTheme,
        child: const Icon(Icons.brightness_4),
      ),
    );
  }
}
