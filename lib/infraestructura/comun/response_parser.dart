import 'dart:async';
import 'dart:convert';

import 'dart:io';

class ResponseParser {
  static Future<String> parseResponse(HttpClientResponse clientResponse) async {
    final completer = Completer<String>();
    final contents = StringBuffer();
    clientResponse.transform(utf8.decoder).listen((data) {
      contents.write(data);
    }, onDone: () => completer.complete(contents.toString()));
    return completer.future;
  }
}
