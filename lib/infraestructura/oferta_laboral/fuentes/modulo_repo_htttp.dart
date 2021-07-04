import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@module
abstract class HttpModuloInjectable {
  @LazySingleton()
  http.Client get cliente => http.Client();
}
