import 'package:flutter/material.dart';
import 'package:property_crm/common/history_container.dart';
import 'package:property_crm/utils/color_utils.dart';

class UpComingHistory extends StatefulWidget {
  const UpComingHistory({Key? key}) : super(key: key);

  @override
  State<UpComingHistory> createState() => _UpComingHistoryState();
}

class _UpComingHistoryState extends State<UpComingHistory> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:ColorUtils.grey200,

      body: const Column(
        children: [
          TransactionCard(
            companyName: 'Company',
            name: 'John Doe',
            dateTime: '2023-08-12 10:30 AM',
            amount: '50,000',
          ),
          TransactionCard(
            companyName: 'Company',
            name: 'John Doe',
            dateTime: '2023-08-12 10:30 AM',
            amount: '50,000',
          ),
        ],
      ),
    );
  }
}
