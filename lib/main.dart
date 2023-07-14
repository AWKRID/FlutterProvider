import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/riverpod/provider_observer.dart';
import 'package:provider/screen/home_screen.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [
        // Provider Scope 하위 provider가 update시 logging
        Logger(),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );


}
