import 'package:flutter_graphql_client/graphqls/repositories.graphql.dart';
import 'package:flutter_graphql_client/providers/graphql_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// GitHubリポジトリを取得するFutureProvider
final repositoriesProvider = FutureProvider<Query$FetchRepositories?>(
  (ref) async {
    return await ref.read(graphqlClientProvider).getRepositories(
          num: 5,
        );
  },
);
