import 'package:flutter/material.dart';

class RefreshButton extends StatelessWidget {
  final bool visible;
  final void Function() onRefresh;

  const RefreshButton({
    super.key,
    required this.visible,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: FloatingActionButton(
        onPressed: onRefresh,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
