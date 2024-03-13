import 'package:fintechadmindashboard/models/enums/transaction_type.dart';
import 'package:fintechadmindashboard/models/expense.dart';
import 'package:fintechadmindashboard/models/transaction.dart';
import 'package:fintechadmindashboard/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MockData {
  static BarChartGroupData makeGroupData(
      int x, double y1, Color barColor, double width) {
    return BarChartGroupData(
      barsSpace: 1,
      x: x,
      barRods: [
        BarChartRodData(
          y: y1,
          colors: [barColor],
          width: width,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ],
    );
  }

  static List<BarChartGroupData> getBarChartitems(Color color,
      {double width = 20}) {
    return [
      makeGroupData(0, 5, color, width),
      makeGroupData(1, 6, color, width),
      makeGroupData(2, 8, color, width),
      makeGroupData(3, 5, color, width),
      makeGroupData(4, 7, color, width),
      makeGroupData(5, 9, color, width),
      makeGroupData(6, 3, color, width),
    ];
  }

  static List<Transaction> get transactions {
    return [
      Transaction(
        "100",
        "Spotify",
        DateTime.now(),
        569.50,
        TransactionType.outgoing,
        "https://images.unsplash.com/photo-1633332755192-727a05c4013d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      ),
      Transaction(
        "101",
        "Transfer",
        DateTime.now(),
        350.50,
        TransactionType.incoming,
"https://plus.unsplash.com/premium_photo-1664298528358-790433ba0815?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHVzZXJ8ZW58MHx8MHx8fDA%3D"      ),
      Transaction(
        "102",
        "Investments",
        DateTime.now(),
        3448.99,
        TransactionType.outgoing,
"https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D"      ),
      Transaction(
        "104",
        "Youtube",
        DateTime.now(),
        829.50,
        TransactionType.outgoing,
        "https://images.unsplash.com/photo-1633332755192-727a05c4013d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
      ),
      Transaction(
          "105",
          "Twitter",
          DateTime.now(),
          300.50,
          TransactionType.incoming,
          "https://plus.unsplash.com/premium_photo-1664298528358-790433ba0815?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHVzZXJ8ZW58MHx8MHx8fDA%3D"      ),
    ];
  }

  static List<Expense> get otherExpanses {
    return [
      Expense(
        color: Styles.defaultBlueColor,
        expenseName: "Other expenses",
        expensePercentage: 50,
      ),
      Expense(
        color: Styles.defaultRedColor,
        expenseName: "Entertainment",
        expensePercentage: 35,
      ),
      Expense(
        color: Styles.defaultYellowColor,
        expenseName: "Investments",
        expensePercentage: 15,
      )
    ];
  }
}
