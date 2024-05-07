import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wealthify_app/bottom_bar.dart';
import 'package:wealthify_app/model/answer_item.dart';
import 'package:wealthify_app/model/question_item.dart';

class DescriptionQuizPage extends StatefulWidget {
  const DescriptionQuizPage({super.key, required this.type});
  final int type;

  @override
  State<DescriptionQuizPage> createState() => _DescriptionQuizPageState();
}

class _DescriptionQuizPageState extends State<DescriptionQuizPage> {
  List<QuestionItem> quiestions1 = [
    QuestionItem(
        title:
            'How do you rate the overall convenience of using the mobile banking application for conducting financial transactions?',
        showAnswers: false,
        date: '23 Apr',
        answers: [
          AnswerItem(
              date: '22 Apr',
              image: 'assets/olivia.png',
              name: 'Olivia',
              title:
                  'I rate the convenience of using the application as high due to its intuitive interface and fast navigation.'),
          AnswerItem(
              date: '14 Apr',
              image: 'assets/michael.png',
              name: 'Michael',
              title:
                  'The overall convenience is good, but I would like to have more personalized features tailored to my needs.'),
          AnswerItem(
              date: '10 Apr',
              image: 'assets/william.png',
              name: 'William',
              title:
                  'The convenience of using the application is generally satisfactory, but could be improved to optimize the process of conducting operations.'),
        ]),
    QuestionItem(
        title:
            'Are there any features or operations that you find inconvenient or in need of improvement in the mobile application?',
        date: '29 Mar',
        showAnswers: false,
        answers: [
          AnswerItem(
              date: '27 Mar',
              image: 'assets/emma.png',
              name: 'Emma',
              title:
                  'Some features, such as setting up recurring payments, require too many steps to configure.'),
          AnswerItem(
              date: '20 Mar',
              image: 'assets/james.png',
              name: 'James',
              title:
                  'Currency conversion operations between accounts are challenging due to unclear exchange rates.'),
          AnswerItem(
              date: '15 Mar',
              image: 'assets/michael.png',
              name: 'Michael',
              title:
                  'The ability to scan and add checks in the application does not always work reliably and requires improvements.'),
        ]),
    QuestionItem(
        title:
            'What is your opinion on the authentication process and security in the mobile application?',
        date: '20 Mar',
        showAnswers: false,
        answers: [
          AnswerItem(
              date: '12 Mar',
              image: 'assets/olivia.png',
              name: 'Olivia',
              title:
                  'The authentication process and security in the application are quite satisfactory and inspire confidence.'),
          AnswerItem(
              date: '6 Mar',
              image: 'assets/emma.png',
              name: 'Emma',
              title:
                  'User authentication could be more convenient, possibly using biometric data.'),
          AnswerItem(
              date: '1 Mar',
              image: 'assets/william.png',
              name: 'William',
              title:
                  'Adding additional authentication methods, such as two-factor authentication, would enhance the level of security.'),
        ]),
    QuestionItem(
        title:
            'How do you rate the time it takes to perform basic operations in the application, such as transfers, bill payments, and account management?',
        date: '28 Feb',
        showAnswers: false,
        answers: [
          AnswerItem(
              date: '26 Feb',
              image: 'assets/michael.png',
              name: 'Michael',
              title:
                  'The time it takes to perform operations in the application is quite satisfactory and meets my expectations.'),
          AnswerItem(
              date: '20 Feb',
              image: 'assets/olivia.png',
              name: 'Olivia',
              title:
                  'Transfers between accounts could be executed more quickly for user convenience.'),
          AnswerItem(
              date: '15 Feb',
              image: 'assets/emma.png',
              name: 'Emma',
              title:
                  'The overall time it takes to perform operations is acceptable, although processing payments between different banks requires improvement.'),
        ]),
    QuestionItem(
        title:
            'What additional features or improvements would you like to see in the mobile banking application to enhance its convenience of use?',
        date: '18 Feb',
        showAnswers: false,
        answers: [
          AnswerItem(
              date: '15 Feb',
              image: 'assets/william.png',
              name: 'William',
              title:
                  'I would like to see more intuitive analytical tools for tracking financial goals and expenses.'),
          AnswerItem(
              date: '12 Feb',
              image: 'assets/james.png',
              name: 'James',
              title:
                  'Adding the ability to view and pay bills from a photo would make account management even more convenient.'),
          AnswerItem(
              date: '5 Feb',
              image: 'assets/olivia.png',
              name: 'Olivia',
              title:
                  'Expanding the options for setting transaction alerts and notifications would increase control and convenience of use.'),
        ]),
  ];
  List<QuestionItem> quiestions2 = [
    QuestionItem(
        title:
            'What additional features or services would you like to see in your bank\'s mobile application?',
        showAnswers: false,
        date: '30 Apr',
        answers: [
          AnswerItem(
              date: '25 Apr',
              image: 'assets/olivia.png',
              name: 'Olivia',
              title:
                  'The ability to manage personal investments and securities portfolio directly through the application.'),
          AnswerItem(
              date: '20 Apr',
              image: 'assets/michael.png',
              name: 'Michael',
              title:
                  'The option to connect and manage additional financial products such as insurance or retirement planning.'),
          AnswerItem(
              date: '15 Apr',
              image: 'assets/william.png',
              name: 'William',
              title:
                  'Integration with budgeting systems and expense tracking for better financial control.'),
        ]),
    QuestionItem(
        title:
            'Do you feel that the mobile application fully meets your needs for financial management, or is there something you feel is lacking?',
        date: '20 Apr',
        showAnswers: false,
        answers: [
          AnswerItem(
              date: '14 Apr',
              image: 'assets/emma.png',
              name: 'Emma',
              title:
                  'The application more than satisfies my needs, but adding support for cryptocurrency investments would be fantastic. '),
          AnswerItem(
              date: '10 Apr',
              image: 'assets/james.png',
              name: 'James',
              title:
                  'The core functionality is good, but built-in tools for budget planning and tracking are missing.'),
          AnswerItem(
              date: '7 Apr',
              image: 'assets/michael.png',
              name: 'Michael',
              title:
                  'The mobile application largely meets my needs, but enhanced analysis capabilities for income and expenses would be useful.'),
        ]),
    QuestionItem(
        title:
            'How would you feel about adding functionality for investment management or financial goals to the application?',
        date: '20 Mar',
        showAnswers: false,
        answers: [
          AnswerItem(
              date: '20 Mar',
              image: 'assets/olivia.png',
              name: 'Olivia',
              title:
                  'I definitely welcome the ability to manage investments and set financial goals directly through the mobile application.'),
          AnswerItem(
              date: '12 Mar',
              image: 'assets/emma.png',
              name: 'Emma',
              title:
                  'Adding functionality for automatic investment of surplus funds into investment goals would be great.'),
          AnswerItem(
              date: '9 Mar',
              image: 'assets/william.png',
              name: 'William',
              title:
                  'I believe that integrating with investment platforms and tools for investment planning would make the application more comprehensive.'),
        ]),
    QuestionItem(
        title:
            'Are there any aspects of the mobile banking application that could be improved to increase your interest or engagement?',
        date: '28 Feb',
        showAnswers: false,
        answers: [
          AnswerItem(
              date: '26 Feb',
              image: 'assets/michael.png',
              name: 'Michael',
              title:
                  'It would be great if the application provided more personalized financial recommendations and advice based on my spending and goals.'),
          AnswerItem(
              date: '20 Feb',
              image: 'assets/olivia.png',
              name: 'Olivia',
              title:
                  'Adding financial courses or articles would make the application more appealing and informative.'),
          AnswerItem(
              date: '15 Feb',
              image: 'assets/emma.png',
              name: 'Emma',
              title:
                  'Increased interactivity and the ability to participate in financial literacy games could significantly enhance the user experience.'),
        ]),
    QuestionItem(
        title:
            'What changes or enhancements in the application could make your experience of using it more convenient or enjoyable?',
        date: '18 Feb',
        showAnswers: false,
        answers: [
          AnswerItem(
              date: '15 Feb',
              image: 'assets/william.png',
              name: 'William',
              title:
                  'I would like to see improved tools for analyzing my financial transactions and transparent reports on expenses and incomes.'),
          AnswerItem(
              date: '12 Feb',
              image: 'assets/james.png',
              name: 'James',
              title:
                  'Adding functionality for quick creation of investment portfolios and tracking their performance could make using the application more convenient.'),
          AnswerItem(
              date: '5 Feb',
              image: 'assets/olivia.png',
              name: 'Olivia',
              title:
                  'Improving the interface and adding personalized notifications about my financial assets would make my experience of using the application more convenient and enjoyable.'),
        ]),
  ];
  List<String> images = [
    'assets/emma.png',
    'assets/olivia.png',
    'assets/james.png',
    'assets/william.png',
    'assets/michael.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 11),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/arrow.png'),
                  const Text(
                    'Quiz',
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    'Quiz',
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: Colors.transparent,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              widget.type == 0
                                  ? 'Convenience of using the mobile banking application'
                                  : 'Additional features and improvements',
                              style: const TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '5 questions',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.4),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [getQuestions()],
                ),
              ),
            ),
          ),
          const BottomBar()
        ],
      ),
    );
  }

  Widget getQuestions() {
    List<Widget> list = [];
    for (var question in widget.type == 0 ? quiestions1 : quiestions2) {
      list.add(Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(images.elementAt(widget.type == 0
              ? quiestions1.indexOf(question)
              : quiestions2.indexOf(question))),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.type == 0
                      ? quiestions1.indexOf(question) == 0
                          ? 'Emma'
                          : quiestions1.indexOf(question) == 1
                              ? 'Olivia'
                              : quiestions1.indexOf(question) == 2
                                  ? 'James'
                                  : quiestions1.indexOf(question) == 3
                                      ? 'William'
                                      : 'Michael'
                      : quiestions2.indexOf(question) == 0
                          ? 'Emma'
                          : quiestions2.indexOf(question) == 1
                              ? 'Olivia'
                              : quiestions2.indexOf(question) == 2
                                  ? 'James'
                                  : quiestions2.indexOf(question) == 3
                                      ? 'William'
                                      : 'Michael',
                  style: const TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  question.date!,
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.4),
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.06),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            question.title!,
                            style: const TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (!question.showAnswers!)
                  InkWell(
                    onTap: () {
                      question.showAnswers = true;
                      setState(() {});
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.06),
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'View 3 answers',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 16,
                                color: Color(0xFF1B96F9),
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.expand_less,
                            color: Colors.black.withOpacity(0.4),
                          )
                        ],
                      ),
                    ),
                  ),
                if (question.showAnswers!)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: InkWell(
                      onTap: () {
                        question.showAnswers = false;
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: const Color(0xFF1B96F9),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'View 3 answers',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.expand_more,
                              color: Colors.white.withOpacity(0.4),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                if (question.showAnswers!) getAnswers(question)
              ],
            ),
          )
        ],
      ));
      list.add(const SizedBox(
        height: 20,
      ));
    }
    return Column(
      children: list,
    );
  }

  Widget getAnswers(QuestionItem question) {
    List<Widget> list = [];
    for (var answer in question.answers!) {
      list.add(Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(answer.image!),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  answer.name!,
                  style: const TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  answer.date!,
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.4),
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.06),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            answer.title!,
                            style: const TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ));
      list.add(const SizedBox(
        height: 20,
      ));
    }
    return Column(
      children: list,
    );
  }
}
