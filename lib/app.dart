import 'package:flutter/material.dart';
import 'package:flutter_graphql_client/providers/repositories.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final repositories = ref.watch(repositoriesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('GraphQL Flutter Sample'),
      ),
      body: repositories.when(
        data: (data) {
          final repositories = data?.viewer?.repositories?.nodes ?? [];
          return Column(
            children: [
              for (final repository in repositories)
                ListTile(
                  title: Text(repository?.name ?? '不明'),
                  trailing: Text(repository?.id ?? '不明'),
                ),
            ],
          );
        },
        error: (error, _) {
          return Text('取得エラー: $error');
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
