import 'package:flutter/material.dart';
import 'package:property_crm/common/history_container.dart';
import 'package:property_crm/utils/color_utils.dart';

class PendingHistory extends StatefulWidget {
  const PendingHistory({Key? key}) : super(key: key);

  @override
  State<PendingHistory> createState() => _PendingHistoryState();
}

class _PendingHistoryState extends State<PendingHistory> {
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
