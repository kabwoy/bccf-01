class TodosModel {
  int? id;
  String? title;
  TodosModel.fromJSON(Map<String, dynamic> parsedJSON) {
    id = parsedJSON['id'];
    title = parsedJSON['title'];
  }
}
