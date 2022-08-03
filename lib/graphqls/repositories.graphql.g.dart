// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$FetchRepositories _$Variables$Query$FetchRepositoriesFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$FetchRepositories(
      nRepositories: json['nRepositories'] as int,
    );

Map<String, dynamic> _$Variables$Query$FetchRepositoriesToJson(
        Variables$Query$FetchRepositories instance) =>
    <String, dynamic>{
      'nRepositories': instance.nRepositories,
    };

Query$FetchRepositories _$Query$FetchRepositoriesFromJson(
        Map<String, dynamic> json) =>
    Query$FetchRepositories(
      viewer: json['viewer'] == null
          ? null
          : Query$FetchRepositories$viewer.fromJson(
              json['viewer'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$FetchRepositoriesToJson(
        Query$FetchRepositories instance) =>
    <String, dynamic>{
      'viewer': instance.viewer?.toJson(),
      '__typename': instance.$__typename,
    };

Query$FetchRepositories$viewer _$Query$FetchRepositories$viewerFromJson(
        Map<String, dynamic> json) =>
    Query$FetchRepositories$viewer(
      repositories: json['repositories'] == null
          ? null
          : Query$FetchRepositories$viewer$repositories.fromJson(
              json['repositories'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$FetchRepositories$viewerToJson(
        Query$FetchRepositories$viewer instance) =>
    <String, dynamic>{
      'repositories': instance.repositories?.toJson(),
      '__typename': instance.$__typename,
    };

Query$FetchRepositories$viewer$repositories
    _$Query$FetchRepositories$viewer$repositoriesFromJson(
            Map<String, dynamic> json) =>
        Query$FetchRepositories$viewer$repositories(
          nodes: (json['nodes'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Query$FetchRepositories$viewer$repositories$nodes.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String?,
        );

Map<String, dynamic> _$Query$FetchRepositories$viewer$repositoriesToJson(
        Query$FetchRepositories$viewer$repositories instance) =>
    <String, dynamic>{
      'nodes': instance.nodes?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$FetchRepositories$viewer$repositories$nodes
    _$Query$FetchRepositories$viewer$repositories$nodesFromJson(
            Map<String, dynamic> json) =>
        Query$FetchRepositories$viewer$repositories$nodes(
          tytpename: json['tytpename'] as String?,
          id: json['id'] as String?,
          name: json['name'] as String?,
          $__typename: json['__typename'] as String?,
        );

Map<String, dynamic> _$Query$FetchRepositories$viewer$repositories$nodesToJson(
        Query$FetchRepositories$viewer$repositories$nodes instance) =>
    <String, dynamic>{
      'tytpename': instance.tytpename,
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.$__typename,
    };
