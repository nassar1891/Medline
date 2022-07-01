import 'package:medline/core/models/area.dart';
import 'package:medline/core/models/user.dart';

enum BloodType {
  aPostive,
  aNegative,
  bPostive,
  bNegative,
  abPostive,
  abNegative,
  oPostive,
  oNegative,
}

extension StringOperations on BloodType {
  String toReadableString() {
    final String shortened = toString().split('.')[1];
    final bool isPositive = shortened.contains('P');
    final List<String> splitted =
        isPositive ? shortened.split('P') : shortened.split('N');
    return splitted.first.toUpperCase() +
        ' ' +
        (isPositive ? 'P' : 'M') +
        splitted[1];
  }
}

class DonationPost {
  final String id;
  final String content;
  final DateTime createdAt;
  final BloodType bloodType;
  final int peopleCount;
  final User user;
  final Area area;

  DonationPost({
    required this.id,
    required this.content,
    required this.createdAt,
    required this.bloodType,
    required this.peopleCount,
    required this.area,
    required this.user,
  });
}
