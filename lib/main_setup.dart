import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class MainSetup {
  static setup() async {
    WidgetsFlutterBinding.ensureInitialized();

    await GetStorage.init();
  }
}
