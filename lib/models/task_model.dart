import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class TaskModel {
  final String objectId;
  final String title;
  final String description;
  final bool isDone;

  TaskModel({
    required this.objectId,
    required this.title,
    required this.description,
    required this.isDone,
  });

  factory TaskModel.fromParseObject(ParseObject obj) {
    return TaskModel(
      objectId: obj.objectId ?? '',
      title: obj.get<String>('title') ?? '',
      description: obj.get<String>('description') ?? '',
      isDone: obj.get<bool>('isDone') ?? false,
    );
  }
}
