import 'dart:async';
import 'dart:convert';

import 'dart:io';

class ResponseParser {
  static Future<String> parseResponse(HttpClientResponse clientResponse) async {
    final responseData = clientResponse.transform(utf8.decoder);
    final completer = Completer<String>();
    final contents = StringBuffer();
    responseData.listen((data) {
      contents.write(data);
    }, 
    onDone: () => completer.complete(contents.toString()));
    return completer.future;
  }
}