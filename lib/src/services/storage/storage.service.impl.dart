import 'package:aniggo/src/constants/configs.dart';
import 'package:aniggo/src/data/data.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Storage implements StorageService {
  late Box<dynamic> hiveBox;

  @override
  Future<void> init() async {
    await openBox();
  }

  Future<void> openBox([String boxName = 'aniggo']) async {
    hiveBox = await Hive.openBox<dynamic>(boxName);
    hiveBox.put(Configs.databaseVersionKey, Configs.databaseVersion);
  }

  @override
  Future<void> remove(String key) async {
    await hiveBox.delete(key);
  }

  @override
  dynamic get(String key) {
    return hiveBox.get(key);
  }

  @override
  dynamic getAll() {
    return hiveBox.values.toList();
  }

  @override
  bool has(String key) {
    return hiveBox.containsKey(key);
  }

  @override
  Future<void> set(String? key, dynamic data) async {
    await hiveBox.put(key, data);
  }

  @override
  Future<void> clear() async {
    await hiveBox.clear();
  }

  @override
  Future<void> close() async {
    await hiveBox.close();
  }
}
