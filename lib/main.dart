import 'package:flutter/material.dart';
import 'package:flutter_graphql_client/app.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();

  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: App(),
      ),
    ),
  );
}
