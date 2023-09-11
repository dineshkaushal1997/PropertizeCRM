// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/image_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';

class CustomTransactionDetailsCard extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final List<Transaction> transactions;
  final String remainingAmount;
  final String doneAmount;
  final String selectedBlock;
  final int selectedButtonIndex;

  const CustomTransactionDetailsCard({
    required this.name,
    required this.phoneNumber,
    required this.transactions,
    required this.remainingAmount,
    required this.doneAmount,
    required this.selectedBlock, // Add this line
    required this.selectedButtonIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 365,
        width: 330,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(
          children: [
            const SizedBox(
              height: 0.5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                ImageUtils.person,
                Text(name),
                const SizedBox(
                  width: 100,
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          topRight: Radius.circular(20)),
                      color: Color(0xff3428AB)),
                  child: Center(
                      child: Text(
                    '${VariableUtils.total} $remainingAmount ',
                    style: const TextStyle(color: Colors.white),
                  )),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                ImageUtils.phone,
                const SizedBox(
                  width: 3,
                ),
                const Text(VariableUtils.number)
              ],
            ),
            const SizedBox(height: 15),
            for (var transaction in transactions)
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    transaction.id,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorUtils.primaryColor,
                    ),
                  ),
                  ImageUtils.left,
                  const SizedBox(
                    width: 8,
                  ),
                  Text(transaction.date),
                  const SizedBox(
                    width: 55,
                  ),
                  Text(transaction.paymentMethod),
                  const SizedBox(
                    width: 50,
                  ),
                  Text(
                    transaction.amount,
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ImageUtils.rupee
                ],
              ),
            Padding(
              padding: const EdgeInsets.only(left: 270, top: 15),
              child: InkWell(
                onTap: () {},
                child: const Text(
                  VariableUtils.edit,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3428AB)),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 130,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(18)),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          VariableUtils.remaining,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Divider(
                        color: Colors.black12,
                        height: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text('28.90L',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 130,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(18)),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Done ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Divider(
                        color: Colors.black12,
                        height: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text('1.1L',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                 SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xff3428AB),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child:  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child:InkWell(
                      onTap: () {
                        Navigator.of(context).pop();

                      },
                      child:  Text(
                        VariableUtils.Save,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xffEAEAEA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () {
                      if (selectedBlock.isNotEmpty) {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => HomeBillPdf(
                        //       selectedBlock: selectedBlock,
                        //       selectedButtonIndex: selectedButtonIndex,
                        //     ),
                        //   ),
                        // );
                      }
                    },
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                         VariableUtils.pdf,
                          style: TextStyle(
                            color: Color(0xff3428AB),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                       InkWell(

                         onTap: () {
                           Navigator.of(context).pop();
                         },
                         child: const Icon(Icons.arrow_forward_ios_outlined,color: ColorUtils.primaryColor),
                       )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Transaction {
  final String id;
  final String date;
  final String paymentMethod;
  final String amount;

  Transaction({
    required this.id,
    required this.date,
    required this.paymentMethod,
    required this.amount,
  });
}
