import 'package:medline/core/models/area.dart';
import 'package:medline/core/models/user.dart';

enum DisabilityPostState {
  pending,
  done,
}

extension StringOperations on DisabilityPostState {
  String toReadableString() => this == DisabilityPostState.pending ? 'Pending' : 'Done';
}

class DisabilityPost {
  final String id;
  final String content;
  final DateTime createdAt;
  final DisabilityPostState state;
  final User user;
  final Area area;

  DisabilityPost({
    required this.id,
    required this.content,
    required this.state,
    required this.createdAt,
    required this.user,
    required this.area,
  });
}
