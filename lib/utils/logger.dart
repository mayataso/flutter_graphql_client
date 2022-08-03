import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 1,
    errorMethodCount: 10,
    lineLength: 80,
    colors: true,
    printEmojis: true,
    printTime: true,
  ),
);
