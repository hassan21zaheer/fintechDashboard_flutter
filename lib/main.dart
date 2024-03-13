import 'package:fintechadmindashboard/layout/app_layout.dart';
import 'package:fintechadmindashboard/models/card_details.dart';
import 'package:fintechadmindashboard/models/enums/card_type.dart';
import 'package:fintechadmindashboard/responsive.dart';
import 'package:fintechadmindashboard/sections/expense_income_chart.dart';
import 'package:fintechadmindashboard/sections/latest_transactions.dart';
import 'package:fintechadmindashboard/sections/statics_by_category.dart';
import 'package:fintechadmindashboard/sections/upgrade_pro_section.dart';
import 'package:fintechadmindashboard/sections/your_cards_section.dart';
import 'package:fintechadmindashboard/styles/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FintechDasboardApp());
}

class FintechDasboardApp extends StatelessWidget {
  const FintechDasboardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Styles.scaffoldBackgroundColor,
        scrollbarTheme: Styles.scrollbarTheme,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppLayout(
          content: Row(
            children: [
              // Main Panel
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: ExpenseIncomeCharts(),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: Styles.defaultPadding,
                        ),
                        child: const UpgradeProSection(),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: LatestTransactions(),
                    ),
                  ],
                ),

              ),
              // Right Panel
              Visibility(
                visible: Responsive.isDesktop(context),
                child: Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(left: Styles.defaultPadding),
                    child: Column(
                      children: [
                        CardsSection(
                          cardDetails: [
                            CardDetails("431421432", CardType.mastercard),
                            CardDetails("423142231", CardType.mastercard),
                          ],
                        ),
                        const Expanded(
                          child: StaticsByCategory(),
                        ),
                      ],
                    ),
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
