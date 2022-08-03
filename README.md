# flutter_graphql_client

FlutterでGraphQLの基本実装を作成してみたサンプルです。

## 準備

### 環境変数
今回は特別な設定が必要ない`env.dart` を用意する方式を採用しています。

```bash
cp lib/env.example.dart lib/env.dart
```

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