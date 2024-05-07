import 'package:flutter/material.dart';
import 'package:wealthify_app/pages/home_page.dart';
import 'package:wealthify_app/pages/news_page.dart';
import 'package:wealthify_app/pages/quiz_page.dart';
import 'package:wealthify_app/pages/settings_page.dart';

EPageOnSelect page = EPageOnSelect.homePage;

enum EPageOnSelect { homePage, quizPage, newsPage, settingsPage }

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  State<BottomBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEEEEEE),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF303030).withOpacity(0.06),
            blurRadius: 15.0,
            spreadRadius: 10.0,
            offset: const Offset(
              5.0,
              5.0,
            ),
          ),
        ],
      ),
      padding: const EdgeInsets.fromLTRB(24, 7, 24, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.homePage) {
                page = EPageOnSelect.homePage;
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const HomePage()),
                    (route) => false);
                setState(() {});
              }
            },
            child: SizedBox(
                width: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.homePage
                        ? Image.asset(
                            'assets/home_icon2.png',
                          )
                        : Image.asset(
                            'assets/home_icon.png',
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Operations',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              color: page == EPageOnSelect.homePage
                                  ? const Color(0xFF1B96F9)
                                  : const Color(0xFF666666),
                              fontSize: 10)),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.quizPage) {
                page = EPageOnSelect.quizPage;
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const QuizPage()),
                    (route) => false);
                setState(() {});
              }
            },
            child: SizedBox(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.quizPage
                        ? Image.asset(
                            'assets/quiz2.png',
                          )
                        : Image.asset(
                            'assets/quiz.png',
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Quiz',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              color: page == EPageOnSelect.quizPage
                                  ? const Color(0xFF1B96F9)
                                  : const Color(0xFF666666),
                              fontSize: 10)),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.newsPage) {
                page = EPageOnSelect.newsPage;
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const NewsPage()),
                    (route) => false);
                setState(() {});
              }
            },
            child: SizedBox(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.newsPage
                        ? Image.asset(
                            'assets/news2.png',
                          )
                        : Image.asset(
                            'assets/news.png',
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('News',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              color: page == EPageOnSelect.newsPage
                                  ? const Color(0xFF1B96F9)
                                  : const Color(0xFF666666),
                              fontSize: 10)),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.settingsPage) {
                page = EPageOnSelect.settingsPage;
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const SettingsPage()),
                    (route) => false);
                setState(() {});
              }
            },
            child: SizedBox(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.settingsPage
                        ? Image.asset(
                            'assets/settings_icon2.png',
                          )
                        : Image.asset(
                            'assets/settings_icon.png',
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Settings',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              color: page == EPageOnSelect.settingsPage
                                  ? const Color(0xFF1B96F9)
                                  : const Color(0xFF666666),
                              fontSize: 10)),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
