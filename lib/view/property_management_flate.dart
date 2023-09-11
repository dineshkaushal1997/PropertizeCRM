import 'package:flutter/material.dart';
import 'package:property_crm/common/bill_container.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';

class FlateManagement extends StatefulWidget {
  const FlateManagement({Key? key}) : super(key: key);

  @override
  State<FlateManagement> createState() => _FlateManagementState();
}

class _FlateManagementState extends State<FlateManagement> {
  List<String> blockNames = ['A', 'B', 'C'];
  String selectedBlock = '';
  int selectedFloor = -1;
  int selectedFlate = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor:ColorUtils.grey200,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20,top: 10),
              child: Text(VariableUtils.block),
            ),
            Row(
              children: [
                const SizedBox(width: 10),
                for (String blockName in blockNames)
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Container(
                      height: 40,
                      width: 50,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            selectedBlock = blockName;
                          });
                        },
                        style: TextButton.styleFrom(
                          primary: ColorUtils.black,
                          backgroundColor: selectedBlock == blockName
                              ? ColorUtils.primaryColor
                              : ColorUtils.white,
                          side: const BorderSide(
                              width: 0.5, color: Colors.black12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(blockName),
                      ),
                    ),
                  ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(VariableUtils.floor),
            ),
            Padding(
              padding: EdgeInsets.only(left: 13),
              child: Container(
                height: 100,
                width: 450,
                child: Wrap(
                  children: [
                    for (int i = 1; i <= 7; i++)
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          height: 40,
                          width: 45,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                selectedFloor = i - 1;
                              });
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor: selectedFloor == i - 1
                                  ? const Color(0xffE3E0F9)
                                  : Colors.white,
                              side: const BorderSide(
                                  width: 0.5, color: Colors.black12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Center(child: Text(i.toString())),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(VariableUtils.flate),
            ),
            Padding(
              padding: EdgeInsets.only(left: 13),
              child: Container(
                height: 100,
                width: 450,
                child: Wrap(
                  children: [

                    for (int i = 101; i <= 107; i++)
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          height: 40,
                          width: 50,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                selectedFlate = i - 1;
                              });
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor: selectedFlate == i - 1
                                  ? const Color(0xffE3E0F9)
                                  : Colors.white,
                              side: const BorderSide(
                                  width: 0.5, color: Colors.black12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Center(child: Text(i.toString())),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            CustomTransactionDetailsCard(
              name: 'Pathan Salman',
              phoneNumber: '9874586245',
              transactions: [
                Transaction(
                    id: '1',
                    date: '23-07-2020',
                    paymentMethod: 'Cash',
                    amount: '30,000'),
                Transaction(
                    id: '2',
                    date: '12-08-2020',
                    paymentMethod: 'Gpay',
                    amount: '50,000'),
                Transaction(
                    id: '3',
                    date: '19-08-2020',
                    paymentMethod: 'Cash',
                    amount: '50,000'),
              ],
              remainingAmount: '28.90L',
              doneAmount: '1.1L',
              selectedBlock: selectedBlock,
              selectedButtonIndex: selectedFlate, // Use selectedFlate here
            ),
          ],
        ),
      ),
    );
  }
}
