import 'package:fintechadmindashboard/styles/styles.dart';
import 'package:fintechadmindashboard/widgets/bar_chart_with_title.dart';
import 'package:flutter/cupertino.dart';

class ExpenseIncomeCharts extends StatelessWidget {
  const ExpenseIncomeCharts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: BarChartWithTitle(
            title: "Liabilites",
            amount: 2340,
            barColor: Styles.defaultBlueColor,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: BarChartWithTitle(
            title: "Assets",
            amount: 7580,
            barColor: Styles.defaultRedColor,
          ),
        ),
      ],
    );
  }
}
