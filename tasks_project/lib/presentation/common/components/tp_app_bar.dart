import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks_project/presentation/common/constants.dart';

class TPAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const TPAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(TPMargins.margin60); // Adjust the height as needed

  @override
  Widget build(BuildContext context) {
    return
      AppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            color: TPColors.secondaryBackground,
          ),
        ),
      title: Row(
        children: [
          Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: TPMargins.margin18
              ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {},
        ),
        const Text('1'),
        const Text('/'),
        const Text('4'),
        IconButton(
          icon: const Icon(Icons.chevron_right),
          onPressed: () {},
        ),
      ],
    );
  }
}