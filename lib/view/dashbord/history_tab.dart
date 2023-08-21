import 'package:flutter/material.dart';


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
        backgroundColor: Color(0xff3428AB),
        title: Text('History'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(7),
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
                            ? Color(0xff3428AB) // Selected color
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
                    child: Center(child: Text("Pending")),
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
                            ? Color(0xff3428AB) // Selected color
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
                    child: Center(child: Text("Upcoming")),
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
                            ? Color(0xff3428AB) // Selected color
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
                    child: Center(child: Text("Done")),
                  ),
                ),
              ],
            ),
          ),
          // Expanded(
          //   child: _currentIndex == 0
          //       ? PendingHistory()
          //       : (_currentIndex == 1 ? UpComingHistory() : DoneHistory()),
          // ),
        ],
      ),
    );
  }
}
