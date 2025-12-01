
class ChildModel {
  final String name;
  final String birthday;
  final String gender;

  final double? weight;
  final double? height;

  ChildModel ({
    required this.name,
    required this.birthday,
    required this.gender,
    this.weight,
    this.height,
  });
}