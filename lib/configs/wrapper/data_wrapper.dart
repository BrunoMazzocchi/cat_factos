import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../api/api_client.dart';

class DataProvider extends StatelessWidget {
  final Widget child;

  const DataProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => ApiClient(baseUrl: "https://catfact.ninja"),
        ),
      ],
      child: child,
    );
  }
}