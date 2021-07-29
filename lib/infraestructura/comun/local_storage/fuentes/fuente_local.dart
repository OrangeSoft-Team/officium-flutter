import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'i_fuente_local.dart';


@LazySingleton(as: IFuenteLocal)
class FuenteLocal implements IFuenteLocal { 
  final FlutterSecureStorage storage;
  FuenteLocal({
    required this.storage
  });

  @override
  Future<Unit> asignarTokenLocal(Cookie tokenCookie) async {
    storage.write(key: 'token', value: jsonEncode(tokenCookie.value));
    return unit;
  }

  @override
  Future<String> obtenerTokenLocal() async {
    final token = storage.read(key: 'token',iOptions: IOSOptions(accessibility:  IOSAccessibility.first_unlock));
    return token.toString();
  }
}