import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'repositories.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$FetchRepositories {
  Variables$Query$FetchRepositories({required this.nRepositories});

  @override
  factory Variables$Query$FetchRepositories.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Query$FetchRepositoriesFromJson(json);

  final int nRepositories;

  Map<String, dynamic> toJson() =>
      _$Variables$Query$FetchRepositoriesToJson(this);
  int get hashCode {
    final l$nRepositories = nRepositories;
    return Object.hashAll([l$nRepositories]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$FetchRepositories) ||
        runtimeType != other.runtimeType) return false;
    final l$nRepositories = nRepositories;
    final lOther$nRepositories = other.nRepositories;
    if (l$nRepositories != lOther$nRepositories) return false;
    return true;
  }

  CopyWith$Variables$Query$FetchRepositories<Variables$Query$FetchRepositories>
      get copyWith =>
          CopyWith$Variables$Query$FetchRepositories(this, (i) => i);
}

abstract class CopyWith$Variables$Query$FetchRepositories<TRes> {
  factory CopyWith$Variables$Query$FetchRepositories(
          Variables$Query$FetchRepositories instance,
          TRes Function(Variables$Query$FetchRepositories) then) =
      _CopyWithImpl$Variables$Query$FetchRepositories;

  factory CopyWith$Variables$Query$FetchRepositories.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchRepositories;

  TRes call({int? nRepositories});
}

class _CopyWithImpl$Variables$Query$FetchRepositories<TRes>
    implements CopyWith$Variables$Query$FetchRepositories<TRes> {
  _CopyWithImpl$Variables$Query$FetchRepositories(this._instance, this._then);

  final Variables$Query$FetchRepositories _instance;

  final TRes Function(Variables$Query$FetchRepositories) _then;

  static const _undefined = {};

  TRes call({Object? nRepositories = _undefined}) =>
      _then(Variables$Query$FetchRepositories(
          nRepositories: nRepositories == _undefined || nRepositories == null
              ? _instance.nRepositories
              : (nRepositories as int)));
}

class _CopyWithStubImpl$Variables$Query$FetchRepositories<TRes>
    implements CopyWith$Variables$Query$FetchRepositories<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchRepositories(this._res);

  TRes _res;

  call({int? nRepositories}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$FetchRepositories {
  Query$FetchRepositories({this.viewer, required this.$__typename});

  @override
  factory Query$FetchRepositories.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchRepositoriesFromJson(json);

  final Query$FetchRepositories$viewer? viewer;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchRepositoriesToJson(this);
  int get hashCode {
    final l$viewer = viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([l$viewer, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchRepositories) || runtimeType != other.runtimeType)
      return false;
    final l$viewer = viewer;
    final lOther$viewer = other.viewer;
    if (l$viewer != lOther$viewer) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchRepositories on Query$FetchRepositories {
  CopyWith$Query$FetchRepositories<Query$FetchRepositories> get copyWith =>
      CopyWith$Query$FetchRepositories(this, (i) => i);
}

abstract class CopyWith$Query$FetchRepositories<TRes> {
  factory CopyWith$Query$FetchRepositories(Query$FetchRepositories instance,
          TRes Function(Query$FetchRepositories) then) =
      _CopyWithImpl$Query$FetchRepositories;

  factory CopyWith$Query$FetchRepositories.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchRepositories;

  TRes call({Query$FetchRepositories$viewer? viewer, String? $__typename});
  CopyWith$Query$FetchRepositories$viewer<TRes> get viewer;
}

class _CopyWithImpl$Query$FetchRepositories<TRes>
    implements CopyWith$Query$FetchRepositories<TRes> {
  _CopyWithImpl$Query$FetchRepositories(this._instance, this._then);

  final Query$FetchRepositories _instance;

  final TRes Function(Query$FetchRepositories) _then;

  static const _undefined = {};

  TRes call({Object? viewer = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$FetchRepositories(
          viewer: viewer == _undefined
              ? _instance.viewer
              : (viewer as Query$FetchRepositories$viewer?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$FetchRepositories$viewer<TRes> get viewer {
    final local$viewer = _instance.viewer;
    return local$viewer == null
        ? CopyWith$Query$FetchRepositories$viewer.stub(_then(_instance))
        : CopyWith$Query$FetchRepositories$viewer(
            local$viewer, (e) => call(viewer: e));
  }
}

class _CopyWithStubImpl$Query$FetchRepositories<TRes>
    implements CopyWith$Query$FetchRepositories<TRes> {
  _CopyWithStubImpl$Query$FetchRepositories(this._res);

  TRes _res;

  call({Query$FetchRepositories$viewer? viewer, String? $__typename}) => _res;
  CopyWith$Query$FetchRepositories$viewer<TRes> get viewer =>
      CopyWith$Query$FetchRepositories$viewer.stub(_res);
}

const documentNodeQueryFetchRepositories = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchRepositories'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'nRepositories')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'viewer'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'repositories'),
                  alias: NameNode(value: 'repositories'),
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'last'),
                        value: VariableNode(
                            name: NameNode(value: 'nRepositories')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: NameNode(value: 'tytpename'),
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: NameNode(value: 'id'),
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: NameNode(value: 'name'),
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$FetchRepositories _parserFn$Query$FetchRepositories(
        Map<String, dynamic> data) =>
    Query$FetchRepositories.fromJson(data);

class Options$Query$FetchRepositories
    extends graphql.QueryOptions<Query$FetchRepositories> {
  Options$Query$FetchRepositories(
      {String? operationName,
      required Variables$Query$FetchRepositories variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryFetchRepositories,
            parserFn: _parserFn$Query$FetchRepositories);
}

class WatchOptions$Query$FetchRepositories
    extends graphql.WatchQueryOptions<Query$FetchRepositories> {
  WatchOptions$Query$FetchRepositories(
      {String? operationName,
      required Variables$Query$FetchRepositories variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQueryFetchRepositories,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$FetchRepositories);
}

class FetchMoreOptions$Query$FetchRepositories
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchRepositories(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$FetchRepositories variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryFetchRepositories);
}

extension ClientExtension$Query$FetchRepositories on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchRepositories>> query$FetchRepositories(
          Options$Query$FetchRepositories options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchRepositories> watchQuery$FetchRepositories(
          WatchOptions$Query$FetchRepositories options) =>
      this.watchQuery(options);
  void writeQuery$FetchRepositories(
          {required Query$FetchRepositories data,
          required Variables$Query$FetchRepositories variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQueryFetchRepositories),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$FetchRepositories? readQuery$FetchRepositories(
      {required Variables$Query$FetchRepositories variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFetchRepositories),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$FetchRepositories.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchRepositories>
    useQuery$FetchRepositories(Options$Query$FetchRepositories options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchRepositories>
    useWatchQuery$FetchRepositories(
            WatchOptions$Query$FetchRepositories options) =>
        graphql_flutter.useWatchQuery(options);

class Query$FetchRepositories$Widget
    extends graphql_flutter.Query<Query$FetchRepositories> {
  Query$FetchRepositories$Widget(
      {widgets.Key? key,
      required Options$Query$FetchRepositories options,
      required graphql_flutter.QueryBuilder<Query$FetchRepositories> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchRepositories$viewer {
  Query$FetchRepositories$viewer(
      {this.repositories, required this.$__typename});

  @override
  factory Query$FetchRepositories$viewer.fromJson(Map<String, dynamic> json) =>
      _$Query$FetchRepositories$viewerFromJson(json);

  final Query$FetchRepositories$viewer$repositories? repositories;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$FetchRepositories$viewerToJson(this);
  int get hashCode {
    final l$repositories = repositories;
    final l$$__typename = $__typename;
    return Object.hashAll([l$repositories, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchRepositories$viewer) ||
        runtimeType != other.runtimeType) return false;
    final l$repositories = repositories;
    final lOther$repositories = other.repositories;
    if (l$repositories != lOther$repositories) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchRepositories$viewer
    on Query$FetchRepositories$viewer {
  CopyWith$Query$FetchRepositories$viewer<Query$FetchRepositories$viewer>
      get copyWith => CopyWith$Query$FetchRepositories$viewer(this, (i) => i);
}

abstract class CopyWith$Query$FetchRepositories$viewer<TRes> {
  factory CopyWith$Query$FetchRepositories$viewer(
          Query$FetchRepositories$viewer instance,
          TRes Function(Query$FetchRepositories$viewer) then) =
      _CopyWithImpl$Query$FetchRepositories$viewer;

  factory CopyWith$Query$FetchRepositories$viewer.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchRepositories$viewer;

  TRes call(
      {Query$FetchRepositories$viewer$repositories? repositories,
      String? $__typename});
  CopyWith$Query$FetchRepositories$viewer$repositories<TRes> get repositories;
}

class _CopyWithImpl$Query$FetchRepositories$viewer<TRes>
    implements CopyWith$Query$FetchRepositories$viewer<TRes> {
  _CopyWithImpl$Query$FetchRepositories$viewer(this._instance, this._then);

  final Query$FetchRepositories$viewer _instance;

  final TRes Function(Query$FetchRepositories$viewer) _then;

  static const _undefined = {};

  TRes call(
          {Object? repositories = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$FetchRepositories$viewer(
          repositories: repositories == _undefined
              ? _instance.repositories
              : (repositories as Query$FetchRepositories$viewer$repositories?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$FetchRepositories$viewer$repositories<TRes> get repositories {
    final local$repositories = _instance.repositories;
    return local$repositories == null
        ? CopyWith$Query$FetchRepositories$viewer$repositories.stub(
            _then(_instance))
        : CopyWith$Query$FetchRepositories$viewer$repositories(
            local$repositories, (e) => call(repositories: e));
  }
}

class _CopyWithStubImpl$Query$FetchRepositories$viewer<TRes>
    implements CopyWith$Query$FetchRepositories$viewer<TRes> {
  _CopyWithStubImpl$Query$FetchRepositories$viewer(this._res);

  TRes _res;

  call(
          {Query$FetchRepositories$viewer$repositories? repositories,
          String? $__typename}) =>
      _res;
  CopyWith$Query$FetchRepositories$viewer$repositories<TRes> get repositories =>
      CopyWith$Query$FetchRepositories$viewer$repositories.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$FetchRepositories$viewer$repositories {
  Query$FetchRepositories$viewer$repositories({this.nodes, this.$__typename});

  @override
  factory Query$FetchRepositories$viewer$repositories.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchRepositories$viewer$repositoriesFromJson(json);

  final List<Query$FetchRepositories$viewer$repositories$nodes?>? nodes;

  @JsonKey(name: '__typename')
  final String? $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$FetchRepositories$viewer$repositoriesToJson(this);
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchRepositories$viewer$repositories) ||
        runtimeType != other.runtimeType) return false;
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) return false;
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) return false;
      }
    } else if (l$nodes != lOther$nodes) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchRepositories$viewer$repositories
    on Query$FetchRepositories$viewer$repositories {
  CopyWith$Query$FetchRepositories$viewer$repositories<
          Query$FetchRepositories$viewer$repositories>
      get copyWith =>
          CopyWith$Query$FetchRepositories$viewer$repositories(this, (i) => i);
}

abstract class CopyWith$Query$FetchRepositories$viewer$repositories<TRes> {
  factory CopyWith$Query$FetchRepositories$viewer$repositories(
          Query$FetchRepositories$viewer$repositories instance,
          TRes Function(Query$FetchRepositories$viewer$repositories) then) =
      _CopyWithImpl$Query$FetchRepositories$viewer$repositories;

  factory CopyWith$Query$FetchRepositories$viewer$repositories.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchRepositories$viewer$repositories;

  TRes call(
      {List<Query$FetchRepositories$viewer$repositories$nodes?>? nodes,
      String? $__typename});
  TRes nodes(
      Iterable<Query$FetchRepositories$viewer$repositories$nodes?>? Function(
              Iterable<
                  CopyWith$Query$FetchRepositories$viewer$repositories$nodes<
                      Query$FetchRepositories$viewer$repositories$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchRepositories$viewer$repositories<TRes>
    implements CopyWith$Query$FetchRepositories$viewer$repositories<TRes> {
  _CopyWithImpl$Query$FetchRepositories$viewer$repositories(
      this._instance, this._then);

  final Query$FetchRepositories$viewer$repositories _instance;

  final TRes Function(Query$FetchRepositories$viewer$repositories) _then;

  static const _undefined = {};

  TRes call({Object? nodes = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$FetchRepositories$viewer$repositories(
          nodes: nodes == _undefined
              ? _instance.nodes
              : (nodes
                  as List<Query$FetchRepositories$viewer$repositories$nodes?>?),
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String?)));
  TRes nodes(
          Iterable<Query$FetchRepositories$viewer$repositories$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$FetchRepositories$viewer$repositories$nodes<
                          Query$FetchRepositories$viewer$repositories$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchRepositories$viewer$repositories$nodes(
                  e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$FetchRepositories$viewer$repositories<TRes>
    implements CopyWith$Query$FetchRepositories$viewer$repositories<TRes> {
  _CopyWithStubImpl$Query$FetchRepositories$viewer$repositories(this._res);

  TRes _res;

  call(
          {List<Query$FetchRepositories$viewer$repositories$nodes?>? nodes,
          String? $__typename}) =>
      _res;
  nodes(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$FetchRepositories$viewer$repositories$nodes {
  Query$FetchRepositories$viewer$repositories$nodes(
      {this.tytpename, this.id, this.name, this.$__typename});

  @override
  factory Query$FetchRepositories$viewer$repositories$nodes.fromJson(
          Map<String, dynamic> json) =>
      _$Query$FetchRepositories$viewer$repositories$nodesFromJson(json);

  final String? tytpename;

  final String? id;

  final String? name;

  @JsonKey(name: '__typename')
  final String? $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$FetchRepositories$viewer$repositories$nodesToJson(this);
  int get hashCode {
    final l$tytpename = tytpename;
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$tytpename, l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$FetchRepositories$viewer$repositories$nodes) ||
        runtimeType != other.runtimeType) return false;
    final l$tytpename = tytpename;
    final lOther$tytpename = other.tytpename;
    if (l$tytpename != lOther$tytpename) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$FetchRepositories$viewer$repositories$nodes
    on Query$FetchRepositories$viewer$repositories$nodes {
  CopyWith$Query$FetchRepositories$viewer$repositories$nodes<
          Query$FetchRepositories$viewer$repositories$nodes>
      get copyWith =>
          CopyWith$Query$FetchRepositories$viewer$repositories$nodes(
              this, (i) => i);
}

abstract class CopyWith$Query$FetchRepositories$viewer$repositories$nodes<
    TRes> {
  factory CopyWith$Query$FetchRepositories$viewer$repositories$nodes(
          Query$FetchRepositories$viewer$repositories$nodes instance,
          TRes Function(Query$FetchRepositories$viewer$repositories$nodes)
              then) =
      _CopyWithImpl$Query$FetchRepositories$viewer$repositories$nodes;

  factory CopyWith$Query$FetchRepositories$viewer$repositories$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchRepositories$viewer$repositories$nodes;

  TRes call({String? tytpename, String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$FetchRepositories$viewer$repositories$nodes<TRes>
    implements
        CopyWith$Query$FetchRepositories$viewer$repositories$nodes<TRes> {
  _CopyWithImpl$Query$FetchRepositories$viewer$repositories$nodes(
      this._instance, this._then);

  final Query$FetchRepositories$viewer$repositories$nodes _instance;

  final TRes Function(Query$FetchRepositories$viewer$repositories$nodes) _then;

  static const _undefined = {};

  TRes call(
          {Object? tytpename = _undefined,
          Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$FetchRepositories$viewer$repositories$nodes(
          tytpename: tytpename == _undefined
              ? _instance.tytpename
              : (tytpename as String?),
          id: id == _undefined ? _instance.id : (id as String?),
          name: name == _undefined ? _instance.name : (name as String?),
          $__typename: $__typename == _undefined
              ? _instance.$__typename
              : ($__typename as String?)));
}

class _CopyWithStubImpl$Query$FetchRepositories$viewer$repositories$nodes<TRes>
    implements
        CopyWith$Query$FetchRepositories$viewer$repositories$nodes<TRes> {
  _CopyWithStubImpl$Query$FetchRepositories$viewer$repositories$nodes(
      this._res);

  TRes _res;

  call({String? tytpename, String? id, String? name, String? $__typename}) =>
      _res;
}
