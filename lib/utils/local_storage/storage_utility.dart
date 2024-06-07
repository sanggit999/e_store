import 'package:hive_flutter/hive_flutter.dart';

class MyLocalStorage {
  
  static final MyLocalStorage _instance = MyLocalStorage._internal();

  factory MyLocalStorage() {
    return _instance;
  }

  MyLocalStorage._internal();

  final _box = Hive.box("e-store");

  Future<void> saveData<T>(String key, T value) async {
    await _box.put(key, value);
  }

  T? readData<T>(String key) {
    return _box.get(key);
  }

  Future<void> removeData(String key) async {
    await _box.delete(key);
  }

  Future<void> clearAll() async {
    await _box.clear();
  }
}
