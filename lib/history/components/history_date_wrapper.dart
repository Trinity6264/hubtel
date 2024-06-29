// ignore_for_file: no-magic-number

import "package:flutter/material.dart";

class HistoryDateWrapper extends StatelessWidget {
  const HistoryDateWrapper({required this.date, super.key});
  final String date;

  @override
  Widget build(BuildContext context) {
    final TextTheme(:bodySmall) = Theme.of(context).textTheme;

    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        color: Color(0xffE6EAED),
        borderRadius: BorderRadius.all(Radius.circular(13)),
      ),
      width: 100,
      child: Text(
        date,
        style: bodySmall?.copyWith(color: const Color(0xff9CABB8)),
      ),
    );
  }
}
