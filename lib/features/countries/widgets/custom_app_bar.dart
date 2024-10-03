import 'package:countries/core/constants/strings.dart';
import 'package:countries/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final bool visible;
  final void Function() onSort;

  const CustomAppBar({
    super.key,
    required this.visible,
    required this.onSort,
    this.height = kToolbarHeight,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        Strings.contryInfo,
        style: AppTextStyles.f24w700Black,
      ),
      actions: [
        Visibility(
          visible: visible,
          child: IconButton(
            icon: const Icon(Icons.sort_by_alpha_outlined),
            onPressed: onSort,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
