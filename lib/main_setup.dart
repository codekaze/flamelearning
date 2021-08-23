<<<<<<< HEAD
=======



>>>>>>> 02d5792e0dddbb211294ba26fb158c9bc4c8e518
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class MainSetup {
  static setup() async {
    WidgetsFlutterBinding.ensureInitialized();

    await GetStorage.init();
  }
}
