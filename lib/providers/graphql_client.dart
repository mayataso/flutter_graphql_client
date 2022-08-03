import 'package:flutter_graphql_client/env.dart';
import 'package:flutter_graphql_client/utils/logger.dart';
import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_graphql_client/graphqls/repositories.graphql.dart';

/// GraphQLクライアントを提供するProvider
final graphqlClientProvider = Provider<_GraphQLClient>((ref) => _GraphQLClient(ref.read));

class _GraphQLClient {
  const _GraphQLClient(this._read);

  final Reader _read;

  /// GraphQLクライアントを返却する
  GraphQLClient getGraphQLApiClient() {
    final targetLink = HttpLink('https://api.github.com/graphql');

    final authLink = AuthLink(
      getToken: () async => 'Bearer $GITHUB_PERSONAL_ACCESS_TOKEN',
    );

    Link link = authLink.concat(targetLink);

    return GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
    );
  }

  /// GitHubのリポジトリ情報を取得する
  Future<Query$FetchRepositories?> getRepositories({int num = 10}) async {
    try {
      final GraphQLClient client = getGraphQLApiClient();

      final result = await client.query$FetchRepositories(
        Options$Query$FetchRepositories(
          variables: Variables$Query$FetchRepositories(nRepositories: 5),
        ),
      );
      logger.d(result.parsedData);
      if (result.exception != null) {
        logger.e(result.exception);
        throw Exception("${result.exception}");
      }
      return result.parsedData;
    } catch (e) {
      logger.e(e);
      throw Exception("$e");
    }
  }
}
