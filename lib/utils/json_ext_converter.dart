import 'package:flutter_graphql_client/utils/logger.dart';

DateTime? fromJsonTimeStampConverter(dynamic json) {
  try {
    final timestamp = json as int;
    final date = DateTime.fromMicrosecondsSinceEpoch(timestamp);
    return date;
  } catch (e) {
    logger.e(e);
    return null;
  }
}
