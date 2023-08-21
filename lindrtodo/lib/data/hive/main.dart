import 'package:hive/hive.dart';
import 'package:lindrtodo/data/hive/boxes_name.dart';
import 'package:lindrtodo/data/hive/models/category.dart';
import 'package:lindrtodo/data/hive/models/task.dart';

class HiveAdapterModels {
  static final hiveModels = [
    HiveDetails(SubTaskAdapter(), HiveBoxNames.subTask),
    HiveDetails(TaskAdapter(), HiveBoxNames.task),
    HiveDetails(CategoryTaskAdapter(), HiveBoxNames.category),
  ];
}

class HiveDetails<T> {
  final TypeAdapter<T> adapter;
  final String name;
  HiveDetails(this.adapter, this.name);
}