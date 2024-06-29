// ignore_for_file: unnecessary_const, no-magic-number, prefer-moving-to-variable

import "package:flutter/material.dart";
import "package:hubtel/history/enums/history_status_enums.dart";

class HistoryCard extends StatelessWidget {
  const HistoryCard({
    required this.avatarIconPath,
    super.key,
    required this.receiverName,
    required this.transactionStatus,
  });
  final HistoryStatusEnums transactionStatus;
  final String avatarIconPath;
  final String receiverName;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: Color(0xffE6EAED))),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      width: double.infinity,
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "14:45PM",
            style: textTheme.bodySmall?.copyWith(
              color: const Color(0xff9CABB8),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  backgroundImage: AssetImage(avatarIconPath),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        receiverName,
                        style: textTheme.bodyMedium?.copyWith(
                          color: const Color(0xff000000),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "024 123 4567",
                        style: textTheme.bodyMedium?.copyWith(
                          color: const Color(0xff9EADBA),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: transactionStatus == HistoryStatusEnums.success
                              ? const Color(0xffDBF7E0)
                              : const Color(0xFFF7DBDB),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(13),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: transactionStatus ==
                                        HistoryStatusEnums.success
                                    ? const Color(0xff70E083)
                                    : const Color(0xFF811F18),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                transactionStatus == HistoryStatusEnums.success
                                    ? Icons.check
                                    : Icons.close,
                                size: 10,
                                color: transactionStatus ==
                                        HistoryStatusEnums.success
                                    ? const Color(0xFFCDFCD5)
                                    : const Color(0xFFE7918A),
                              ),
                            ),
                            const SizedBox(width: 2),
                            Text(
                              transactionStatus == HistoryStatusEnums.success
                                  ? "Successful"
                                  : "Failed",
                              style: textTheme.bodySmall?.copyWith(
                                color: transactionStatus ==
                                        HistoryStatusEnums.success
                                    ? const Color(0xff70E083)
                                    : const Color(0xFF811F18),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "GHS 500",
                        style: textTheme.bodyMedium?.copyWith(
                          color: const Color(0xff000000),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: Color(0xffE6EAED)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xff7978DE).withOpacity(0.7),
                    shape: BoxShape.circle,
                  ),
                  margin: const EdgeInsets.only(right: 10),
                  child: const Icon(
                    Icons.person,
                    size: 15,
                    color: Color(0xff7978DE),
                  ),
                ),
                Text(
                  "Personal",
                  style: textTheme.bodyMedium?.copyWith(
                    color: const Color(0xff000000),
                    fontSize: 12,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff9CABB8),
                    shape: BoxShape.circle,
                  ),
                  width: 4,
                  height: 4,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                ),
                Text(
                  "Cool your heart wai",
                  style: textTheme.bodyMedium?.copyWith(
                    color: const Color(0xff000000),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
