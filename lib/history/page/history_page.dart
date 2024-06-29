
import "package:flutter/material.dart";
import "package:hubtel/history/components/history_card.dart";
import "package:hubtel/history/components/history_date_wrapper.dart";
import "package:hubtel/history/enums/history_status_enums.dart";

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 35,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              decoration: const BoxDecoration(
                color: Color(0xffE6EAED),
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Text(
                        "History",
                        style: textTheme.bodySmall?.copyWith(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      child: Text(
                        "Transaction Summary",
                        style: textTheme.bodySmall?.copyWith(
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Color(0xffE6EAED)),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: textTheme.bodyMedium?.copyWith(
                          color: const Color(0xff9CABB8),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: const Color(0xffE6EAED),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE6EAED)),
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE6EAED)),
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE6EAED)),
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.filter)),
                ],
              ),
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HistoryDateWrapper(date: "May 24, 2022"),
                      HistoryCard(
                        transactionStatus: HistoryStatusEnums.success,
                        avatarIconPath: "assets/momo.png",
                        receiverName: "Emmanuel Rockson Kwabena Uncle Ebo",
                      ),
                      HistoryCard(
                        transactionStatus: HistoryStatusEnums.failed,
                        avatarIconPath: "assets/images.png",
                        receiverName: "Absa Bank",
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: HistoryDateWrapper(date: "May 24, 2024"),
                      ),
                      HistoryCard(
                        receiverName: "Emmanuel Rockson Kwabena Uncle Ebo",
                        avatarIconPath: "assets/momo.png",
                        transactionStatus: HistoryStatusEnums.failed,
                      ),
                      HistoryCard(
                        transactionStatus: HistoryStatusEnums.failed,
                        avatarIconPath: "assets/images.png",
                        receiverName: "Absa Bank",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 50,
        width: 150,
        child: Card(
          elevation: 5,
          color: const Color(0xff01C7B1),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.add, color: Color(0xff01C7B1)),
                ),
                const SizedBox(width: 10),
                Text(
                  "SEND NEW",
                  textAlign: TextAlign.center,
                  style: textTheme.bodySmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedIconTheme: const IconThemeData(color: Color(0xffCBCBCB)),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        selectedIconTheme: const IconThemeData(color: Color(0xff000000)),
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Image.asset("assets/send.png"),
            label: "send",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/history.png"),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/schedules.png"),
            label: "Schedule",
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
