import 'package:flutter/material.dart';
import 'package:property_crm/utils/image_utils.dart';

class TransactionCard extends StatelessWidget {
  final String companyName;
  final String name;
  final String dateTime;
  final String amount;

  const TransactionCard({
    required this.companyName,
    required this.name,
    required this.dateTime,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 70,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Company Name $companyName'),
                  Text('Name: $name'),
                  Text(' $dateTime'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  ImageUtils.rupee,Text('$amount'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
