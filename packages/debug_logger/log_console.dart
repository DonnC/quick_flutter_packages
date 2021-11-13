import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

final bool LOG = !kReleaseMode;

final _log = Logger(
  printer: PrettyPrinter(
    methodCount: 1,
    printEmojis: false,
  ),
);

void log(var data, [String? type]) {
  if (LOG) {
    if (type == null) {
      _log.i(data.toString());
    }

    // switch
    else {
      switch (type) {
        case 'i':
          _log.i(data.toString());
          break;
        case 'd':
          _log.d(data.toString());
          break;
        case 'e':
          _log.e(data.toString());
          break;
        default:
          _log.i(data.toString());
      }
    }
  }
}
