import 'package:flutter/material.dart';
import 'package:property_crm/utils/color_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';
import 'package:property_crm/view/history/done_history.dart';
import 'package:property_crm/view/history/pending_history.dart';
import 'package:property_crm/view/history/upcoming_history.dart';


class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff3428AB),
        title: const Text(VariableUtils.history),
      ),      backgroundColor:ColorUtils.grey200,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 45,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: _currentIndex == 0
                            ? const Color(0xff3428AB) // Selected color
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0; // Show Pending section
                      });
                    },
                    child: const Center(child: Text(VariableUtils.pending,style: TextStyle(
                      color: ColorUtils.black,
                    ),)),
                  ),
                ),
                Container(
                  height: 45,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: _currentIndex == 1
                            ? const Color(0xff3428AB) // Selected color
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 1; // Show Upcoming section
                      });
                    },
                    child: const Center(child: Text(VariableUtils.upcoming,style: TextStyle(
                      color: ColorUtils.black,
                    ),)),
                  ),
                ),
                Container(
                  height: 45,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: _currentIndex == 2
                            ? const Color(0xff3428AB) // Selected color
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 2; // Show Done section
                      });
                    },
                    child: const Center(child: Text(VariableUtils.done,style: TextStyle(
                      color: ColorUtils.black,
                    ),)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: _currentIndex == 0
                ? const PendingHistory()
                : (_currentIndex == 1 ? const UpComingHistory() : const DoneHistory()),
          ),
        ],
      ),
    );
  }
}
