import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:wealthify_app/bottom_bar.dart';
import 'package:wealthify_app/pages/terms_screen.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 65, bottom: 16, left: 16, right: 16),
          child: Row(
            children: [
              Text(
                'Settings',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(8, 13, 8, 13),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.06),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const ReadControl(
                                          link:
                                              'https://docs.google.com/document/d/1Pz0LEZs0X-x5Qu-iHhnxR0HxwXFlgmED6l-i18cyhc0/edit?usp=sharing',
                                        )),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/terms.png'),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Privacy Policy',
                                      style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.black.withOpacity(0.4),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
                            child: Divider(
                              color: Colors.black.withOpacity(0.08),
                              height: 1,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const ReadControl(
                                          link:
                                              'https://docs.google.com/document/d/151c2vvs9r5eBIXEZmKpxzlkEPZJ8yEAX5saA8AymlIc/edit?usp=sharing',
                                        )),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/privacy.png'),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Terms & Conditions',
                                      style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.black.withOpacity(0.4),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
                            child: Divider(
                              color: Colors.black.withOpacity(0.08),
                              height: 1,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const ReadControl(
                                          link:
                                              'https://forms.gle/EFJqHHQXLtaWoDb79',
                                        )),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/support.png'),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Support page',
                                      style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.black.withOpacity(0.4),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
        const BottomBar()
      ]),
    );
  }
}
