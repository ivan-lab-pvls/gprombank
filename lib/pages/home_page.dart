import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wealthify_app/bottom_bar.dart';
import 'package:wealthify_app/model/expense_item.dart';
import 'package:wealthify_app/model/income_item.dart';
import 'package:wealthify_app/model/user.dart';

UserItem user = UserItem(totalSum: 0, totalExpenses: 0, totalIncomes: 0);

enum EType {
  all("All"),
  income("Income"),
  expense("Expense");

  const EType(this.text);
  final String text;
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;
  ExpenseItem expense = ExpenseItem();
  IncomeItem income = IncomeItem();
  List<ExpenseItem> expenses = [];
  List<IncomeItem> incomes = [];
  TextEditingController textControllerIncomeDescription =
      TextEditingController();
  TextEditingController textControllerIncome = TextEditingController();
  TextEditingController textControllerExpenseDescription =
      TextEditingController();
  TextEditingController textControllerExpense = TextEditingController();
  List<EType> types = [EType.all, EType.income, EType.expense];
  EType selected = EType.all;
  @override
  void initState() {
    super.initState();
    getDataToSP();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xFF1B96F9)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 65, 16, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Account Balance',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      color: Colors.white.withOpacity(0.4),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '${user.totalSum!.toString()}\$',
                                        style: const TextStyle(
                                            fontFamily: 'SF Pro Text',
                                            color: Colors.white,
                                            fontSize: 32,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              number = 0;
                              textControllerIncomeDescription =
                                  TextEditingController();
                              textControllerIncome = TextEditingController();
                              textControllerExpenseDescription =
                                  TextEditingController();
                              textControllerExpense = TextEditingController();
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  elevation: 0,
                                  shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  backgroundColor: Colors.white,
                                  constraints: BoxConstraints(
                                      maxHeight:
                                          MediaQuery.of(context).size.height -
                                              300),
                                  context: context,
                                  builder: (context) {
                                    return StatefulBuilder(
                                        builder: (context, setstate) {
                                      return DefaultTabController(
                                        length: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 14, bottom: 40),
                                          child: Column(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 3),
                                              child: Image.asset(
                                                  'assets/drag.png'),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 16,
                                                  right: 16,
                                                  bottom: 13),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Flexible(
                                                    child: Text(
                                                      'Choose what you want to add',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'SF Pro Text',
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Image.asset(
                                                          'assets/close.png'))
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 18),
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Container(
                                                  height: 43,
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 16,
                                                    vertical: 5,
                                                  ),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        10,
                                                      ),
                                                      color: Colors.black
                                                          .withOpacity(0.06),
                                                    ),
                                                    child: TabBar(
                                                      onTap: (value) {
                                                        number = value;
                                                        setstate(() {});
                                                      },
                                                      dividerColor:
                                                          Colors.transparent,
                                                      indicatorSize:
                                                          TabBarIndicatorSize
                                                              .tab,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              2),
                                                      labelColor: Colors.white,
                                                      unselectedLabelColor:
                                                          Colors.black
                                                              .withOpacity(0.4),
                                                      indicator: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          10,
                                                        ),
                                                        color: const Color(
                                                            0xFF1B96F9),
                                                      ),
                                                      tabs: const [
                                                        Tab(
                                                          text: 'Incomes',
                                                        ),
                                                        Tab(
                                                          text: 'Expenses',
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: TabBarView(
                                                children: [
                                                  SingleChildScrollView(
                                                    child: Column(
                                                      children: [
                                                        const Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  16, 0, 16, 8),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Title',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'SF Pro Text',
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .fromLTRB(16,
                                                                  0, 16, 16),
                                                          child: TextField(
                                                            cursorColor:
                                                                Colors.black,
                                                            style: const TextStyle(
                                                                fontFamily:
                                                                    'SF Pro Text',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 16),
                                                            controller:
                                                                textControllerIncomeDescription,
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'Example: (Buying a scooter)',
                                                              helperStyle: TextStyle(
                                                                  fontFamily:
                                                                      'SF Pro Text',
                                                                  color: Colors
                                                                      .black
                                                                      .withOpacity(
                                                                          0.4),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 16),
                                                              filled: true,
                                                              fillColor: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.06),
                                                              focusedBorder: const OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              15)),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none),
                                                              enabledBorder: const OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              15)),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none),
                                                            ),
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  16, 0, 16, 8),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Amount money',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'SF Pro Text',
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      16),
                                                          child: TextField(
                                                            cursorColor:
                                                                Colors.black,
                                                            inputFormatters: <TextInputFormatter>[
                                                              FilteringTextInputFormatter
                                                                  .digitsOnly
                                                            ],
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            style: const TextStyle(
                                                                fontFamily:
                                                                    'SF Pro Text',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 15),
                                                            controller:
                                                                textControllerIncome,
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'Amount (\$)',
                                                              helperStyle: TextStyle(
                                                                  fontFamily:
                                                                      'SF Pro Text',
                                                                  color: Colors
                                                                      .black
                                                                      .withOpacity(
                                                                          0.4),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 16),
                                                              filled: true,
                                                              fillColor: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.06),
                                                              focusedBorder:
                                                                  const OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            15)),
                                                                borderSide:
                                                                    BorderSide
                                                                        .none,
                                                              ),
                                                              enabledBorder:
                                                                  const OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            15)),
                                                                borderSide:
                                                                    BorderSide
                                                                        .none,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SingleChildScrollView(
                                                    child: Column(
                                                      children: [
                                                        const Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  16, 0, 16, 8),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Title',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'SF Pro Text',
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .fromLTRB(16,
                                                                  0, 16, 16),
                                                          child: TextField(
                                                            cursorColor:
                                                                Colors.black,
                                                            style: const TextStyle(
                                                                fontFamily:
                                                                    'SF Pro Text',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 16),
                                                            controller:
                                                                textControllerExpenseDescription,
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'Example: (Buying a scooter)',
                                                              helperStyle: TextStyle(
                                                                  fontFamily:
                                                                      'SF Pro Text',
                                                                  color: Colors
                                                                      .black
                                                                      .withOpacity(
                                                                          0.4),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 16),
                                                              filled: true,
                                                              fillColor: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.06),
                                                              focusedBorder: const OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              15)),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none),
                                                              enabledBorder: const OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              15)),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none),
                                                            ),
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  16, 0, 16, 8),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Amount money',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'SF Pro Text',
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      16),
                                                          child: TextField(
                                                            cursorColor:
                                                                Colors.black,
                                                            inputFormatters: <TextInputFormatter>[
                                                              FilteringTextInputFormatter
                                                                  .digitsOnly
                                                            ],
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            style: const TextStyle(
                                                                fontFamily:
                                                                    'SF Pro Text',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 15),
                                                            controller:
                                                                textControllerExpense,
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'Amount (\$)',
                                                              helperStyle: TextStyle(
                                                                  fontFamily:
                                                                      'SF Pro Text',
                                                                  color: Colors
                                                                      .black
                                                                      .withOpacity(
                                                                          0.4),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 16),
                                                              filled: true,
                                                              fillColor: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.06),
                                                              focusedBorder:
                                                                  const OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            15)),
                                                                borderSide:
                                                                    BorderSide
                                                                        .none,
                                                              ),
                                                              enabledBorder:
                                                                  const OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            15)),
                                                                borderSide:
                                                                    BorderSide
                                                                        .none,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      16, 20, 16, 0),
                                              child: InkWell(
                                                onTap: () {
                                                  if (number == 0) {
                                                    if (textControllerIncome
                                                            .text.isNotEmpty &&
                                                        textControllerIncomeDescription
                                                            .text.isNotEmpty) {
                                                      income = IncomeItem();
                                                      income
                                                          .cost = num.tryParse(
                                                              textControllerIncome
                                                                  .text)!
                                                          .toDouble();
                                                      income.date =
                                                          DateTime.now();
                                                      income.description =
                                                          textControllerIncomeDescription
                                                              .text;
                                                      user.totalSum = user
                                                              .totalSum! +
                                                          income.cost!.toInt();

                                                      incomes.add(income);
                                                      user.totalIncomes = 0;
                                                      for (var item
                                                          in incomes) {
                                                        user.totalIncomes = user
                                                                .totalIncomes! +
                                                            item.cost!.toInt();
                                                      }
                                                      addDataToSP();
                                                      Navigator.pop(context);
                                                      setState(() {});
                                                    }
                                                  } else {
                                                    if (textControllerExpense
                                                            .text.isNotEmpty &&
                                                        textControllerExpenseDescription
                                                            .text.isNotEmpty) {
                                                      expense = ExpenseItem();
                                                      expense
                                                          .cost = num.tryParse(
                                                              textControllerExpense
                                                                  .text)!
                                                          .toDouble();
                                                      expense.date =
                                                          DateTime.now();
                                                      expense.description =
                                                          textControllerExpenseDescription
                                                              .text;

                                                      user.totalSum = user
                                                              .totalSum! -
                                                          expense.cost!.toInt();

                                                      expenses.add(expense);
                                                      user.totalExpenses = 0;
                                                      for (var item
                                                          in expenses) {
                                                        user.totalExpenses =
                                                            user.totalExpenses! +
                                                                item.cost!
                                                                    .toInt();
                                                      }
                                                    }
                                                    addDataToSP();
                                                    Navigator.pop(context);
                                                    setState(() {});
                                                  }
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  padding:
                                                      const EdgeInsets.all(12),
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF1B96F9),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  child: const Text(
                                                    'Add',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'SF Pro Text',
                                                        fontSize: 16,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ),
                                      );
                                    });
                                  });
                            },
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: const Icon(
                                Icons.add,
                                color: Color(0xFF1B96F9),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.08),
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Image.asset('assets/income.png'),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Income',
                                        style: TextStyle(
                                            fontFamily: 'SF Pro Text',
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              '${user.totalIncomes}\$',
                                              style: const TextStyle(
                                                  fontFamily: 'SF Pro Text',
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.08),
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Image.asset('assets/expense.png'),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Expense',
                                        style: TextStyle(
                                            fontFamily: 'SF Pro Text',
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              '${user.totalExpenses}\$',
                                              style: const TextStyle(
                                                  fontFamily: 'SF Pro Text',
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(
                bottom: 16,
              ),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF1B96F9), Colors.white])),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: getTypes(),
                  ),
                ),
              )),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          if (expenses.isEmpty && incomes.isEmpty)
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.06),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  Image.asset('assets/empty.png'),
                                  Text(
                                    'Your balance is empty, add income or expenses so you can track them.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        color: Colors.black.withOpacity(0.4),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          if (expenses.isEmpty &&
                              incomes.isNotEmpty &&
                              selected == EType.expense)
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.06),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  Image.asset('assets/empty.png'),
                                  Text(
                                    'Your expenses is empty, add expenses so you can track them.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        color: Colors.black.withOpacity(0.4),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          if (incomes.isEmpty &&
                              expenses.isNotEmpty &&
                              selected == EType.income)
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.06),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  Image.asset('assets/empty.png'),
                                  Text(
                                    'Your incomes is empty, add incomes so you can track them.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        color: Colors.black.withOpacity(0.4),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          if (selected == EType.income) getIncomes(),
                          if (selected == EType.expense) getExpenses(),
                          if (selected == EType.all) getAll()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const BottomBar()
        ],
      ),
    );
  }

  Widget getExpenses() {
    List<Widget> list = [];
    for (var item in expenses) {
      list.add(Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.06),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/expense_widget.png'),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.description!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Expense',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Text(
                  '${item.cost!.toStringAsFixed(0)}\$',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ));
      list.add(const SizedBox(
        height: 8,
      ));
    }
    return Column(
      children: list,
    );
  }

  Widget getIncomes() {
    List<Widget> list = [];
    for (var item in incomes) {
      list.add(Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.06),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/income_widget.png'),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.description!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Income',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Text(
              '${item.cost!.toStringAsFixed(0)}\$',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ));
      list.add(const SizedBox(
        height: 8,
      ));
    }
    return Column(
      children: list,
    );
  }

  Widget getTypes() {
    List<Widget> list = [];
    for (var type in types) {
      list.add(InkWell(
        onTap: () {
          selected = type;
          setState(() {});
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          decoration: BoxDecoration(
              color: selected == type
                  ? const Color(0xFF1B96F9)
                  : Colors.black.withOpacity(0.06),
              borderRadius: BorderRadius.circular(12)),
          child: Text(
            type.text,
            style: TextStyle(
                fontFamily: 'SF Pro Text',
                color: selected == type
                    ? Colors.white
                    : Colors.black.withOpacity(0.4),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
      ));
      list.add(const SizedBox(
        width: 8,
      ));
    }
    return Row(
      children: list,
    );
  }

  Future<void> addDataToSP() async {
    final prefs = await SharedPreferences.getInstance();
    // await prefs.clear();

    prefs.setString('user', jsonEncode(user));
    prefs.setString('expensesLists', jsonEncode(expenses));
    prefs.setString('incomeLists', jsonEncode(incomes));
  }

  void getDataToSP() async {
    final prefs = await SharedPreferences.getInstance();
    final List<dynamic> jsonData2 =
        jsonDecode(prefs.getString('expensesLists') ?? '[]');
    final List<dynamic> jsonData3 =
        jsonDecode(prefs.getString('incomeLists') ?? '[]');
    if (prefs.getString('user') != null) {
      Map<String, dynamic> userMap = jsonDecode(prefs.getString('user')!);
      user = UserItem.fromJson(userMap);
    }

    expenses = jsonData2.map<ExpenseItem>((jsonList) {
      {
        return ExpenseItem.fromJson(jsonList);
      }
    }).toList();
    incomes = jsonData3.map<IncomeItem>((jsonList) {
      {
        return IncomeItem.fromJson(jsonList);
      }
    }).toList();

    setState(() {});
  }

  Widget getAll() {
    List<Widget> list = [];
    for (var item in incomes) {
      list.add(Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.06),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/income_widget.png'),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.description!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Income',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Text(
              '${item.cost!.toStringAsFixed(0)}\$',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ));
      list.add(const SizedBox(
        height: 8,
      ));
    }
    for (var item in expenses) {
      list.add(Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.06),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/income_widget.png'),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.description!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Expense',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Text(
              '${item.cost!.toStringAsFixed(0)}\$',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ));
      list.add(const SizedBox(
        height: 8,
      ));
    }
    return Column(
      children: list,
    );
  }
}
