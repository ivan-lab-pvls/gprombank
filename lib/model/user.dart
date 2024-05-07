class UserItem {
  String? name;
  int? totalSum;
  int? totalIncomes;
  int? totalExpenses;

  UserItem({this.name, this.totalSum, this.totalIncomes, this.totalExpenses});

  factory UserItem.fromJson(Map<String, dynamic> parsedJson) {
    return UserItem(
      name: parsedJson['name'] ?? "",
      totalSum: parsedJson['totalSum'] ?? "",
      totalIncomes: parsedJson['totalIncomes'] ?? "",
      totalExpenses: parsedJson['totalExpenses'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "totalSum": totalSum,
      "totalIncomes": totalIncomes,
      "totalExpenses": totalExpenses
    };
  }
}
