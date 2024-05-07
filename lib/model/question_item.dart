import 'package:wealthify_app/model/answer_item.dart';

class QuestionItem {
  String? title;
  List<AnswerItem>? answers;
  String? date;
  bool? showAnswers;
  QuestionItem({this.title, this.answers, this.date, this.showAnswers});
}
