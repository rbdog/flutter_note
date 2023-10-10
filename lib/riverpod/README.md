# 案内所

これはファイルを探すための目次です。Youtube 解説動画はこちらから!  
https://youtu.be/0HVru4WtdWo

<br/><br/>

# **第 1 回** パッケージの選び方

- pubspec_yaml.txt
  - 必要なパッケージ一覧
  - 実際には `pubspec.yaml` に書いてください
- my_widget.dart
  - `ConsumerWidget` を 1 つ準備
- main.dart
  - アプリを `ProviderScope` で囲む

<br/><br/>

# **第 2 回** 状態の準備

- s1.dart
  - 単純データ `int`
- s2.dart
  - 複雑データ `List`
- s3.dart
  - Future 系 `Future`
- s4.dart
  - Stream `Stream`

<br/><br/>

# **第 3 回** 状態の使い方

- my_widget_1.dart
  - 状態を `watch`
  - 状態を `listen`
  - ノティファイアを `read`
- my_widget_2.dart
  - 状態を watch
  - ノティファイアを read
- my_widget_3.dart
  - 状態を watch
  - `AsyncValue` で 3 つに分岐
  - ノティファイアを read
- my_widget_4.dart
  - 状態を watch
  - AsyncValue で 3 つに分岐
  - ノティファイアを read

<br/><br/>

# **第 4 回** 応用編

応用編は説明の章ごとにフォルダを分けてあります

## select

- select/
  - sikoku.dart
  - main.dart
  - state.dart
  - widget.dart

## build & onDispose

- build_ondispose/
  - main.dart
  - state.dart

## keepAlive

- /keep_alive
  - state.dart
  - main.dart

## BasicProvider

- /basic_provider
  - main.dart
  - basic.dart

## BasicProvider - プロキシ

- /basic_provider_proxy
  - main.dart
  - proxy.dart
  - widget.dart

## BasicProvider - ロジック

- /basic_provider_logic
  - main.dart
  - logic.dart
  - state.dart

## BasicProvider - キャッシュ

- /basic_provider_cache
  - main.dart
  - cache.dart
  - state.dart

## ProviderFamily

- /provider_family
  - main.dart
  - family.dart
  - widget.dart

## ProviderScope

- /provider_scope
  - main.dart
  - state.dart

## overrideWith

- /override_with
  - state.dart
  - main.dart
  - widget.dart

<br/><br/>

# 説明用アイコン

ダウンロードは[こちら](https://github.com/rbdog/design-icons/releases)からどうぞ
