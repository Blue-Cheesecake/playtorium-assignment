import 'package:flutter/material.dart';

class CommonCampaignCardWD extends StatelessWidget {
  const CommonCampaignCardWD({required this.id, required this.title, super.key});

  final int id;
  final String title;

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.blue, Colors.amber, Colors.red];
    int index = 0;
    if (id <= 2) {
      index = 0;
    } else if (id > 2 && id <= 4) {
      index = 1;
    } else {
      index = 2;
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(99),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4)],
        color: colors[index].withOpacity(0.2),
      ),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 25),
      child: Text(title),
    );
  }
}
