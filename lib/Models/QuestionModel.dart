class QuestionModel{
  late String id, description;
  late Map<String, bool> options;

  QuestionModel({
    required this.id,
    required this.description,
    required this.options
  });

  @override
  String toString() {
    // TODO: implement toString
    return 'QuestionModel(id: $id, description: $description, options: $options)';
  }
}