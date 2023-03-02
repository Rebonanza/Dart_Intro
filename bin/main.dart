import 'package:dart_application_1/core.dart' as app;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${app.calculate()}!');
  String username, password;
  print('Program Sederhana Menggunakan Dart');
  print('Hello Silahkan Login ');
  do {
    print("Enter your username ? : ");
    username = stdin.readLineSync()!;
    print("Enter your password ? : ");
    password = stdin.readLineSync()!;
    if (app.login(username, password)) {
      app.menu(username);
    } else {
      print('login gagal');
    }
  } while (!app.login(username, password));
}
