import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import '../models/task_model.dart';

class TaskService {
  static Future<bool> createTask(String title, String description) async {
    final user = await ParseUser.currentUser() as ParseUser?;
    if (user == null) return false;

    final task = ParseObject('Task')
      ..set('title', title)
      ..set('description', description)
      ..set('isDone', false)
      ..set('owner', user);

    final response = await task.save();
    return response.success;
  }

  static Future<List<TaskModel>> fetchTasks() async {
    final user = await ParseUser.currentUser() as ParseUser?;
    if (user == null) return [];

    final query = QueryBuilder<ParseObject>(ParseObject('Task'))
      ..whereEqualTo('owner', user)
      ..orderByDescending('createdAt');

    final response = await query.query();
    if (response.success && response.results != null) {
      return response.results!
          .map((e) => TaskModel.fromParseObject(e as ParseObject))
          .toList();
    }
    return [];
  }

  static Future<bool> updateTask(
    String objectId,
    String title,
    String description,
  ) async {
    final task = ParseObject('Task')..objectId = objectId;
    task.set('title', title);
    task.set('description', description);
    final response = await task.save();
    return response.success;
  }

  static Future<bool> deleteTask(String objectId) async {
    final task = ParseObject('Task')..objectId = objectId;
    final response = await task.delete();
    return response.success;
  }
}
