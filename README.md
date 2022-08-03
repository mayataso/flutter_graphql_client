# flutter_graphql_client

FlutterでGraphQLの基本実装を作成してみたサンプルです。
自身のリポジトリ一覧を表示します。

## 準備

### 環境変数
今回は特別な設定が必要ない`env.dart` を用意する方式を採用しています。

```bash
cp lib/env.example.dart lib/env.dart
```
`GITHUB_PERSONAL_ACCESS_TOKEN` に取得したGitHubのアクセストークンを設定。

アクセストークン取得の方法は以下
リポジトリの閲覧権限が必要なため、最上部の`repo` 関連 (基本的に`repo:status`があればOK)をチェックすること。
https://docs.github.com/ja/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token

### パッケージダウンロード

```bash
flutter pub get
```

### ローカル実行

```bash
flutter run
```

## graphql_codegenの実行

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```