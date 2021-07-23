import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@module
abstract class HttpModuloInjectable {
  @LazySingleton()
  http.Client get cliente => http.Client();
}
