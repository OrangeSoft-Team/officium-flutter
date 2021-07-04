import 'dart:io';

String fixture(String name) =>
    File('./test/infraestructura/data_pruebas/$name').readAsStringSync();
