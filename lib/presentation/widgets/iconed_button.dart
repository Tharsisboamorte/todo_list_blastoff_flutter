import 'package:flutter/material.dart';

class AppIconButton extends StatefulWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.textController,
    this.onPressed,
  });

  final IconData icon;
  final TextEditingController textController;
  final Function()? onPressed;

  @override
  State<AppIconButton> createState() => _AppIconButtonState();
}

class _AppIconButtonState extends State<AppIconButton> {
  @override
  Widget build(BuildContext context) {
    final controller = widget.textController;
    return FloatingActionButton(
      backgroundColor: Colors.green,
      onPressed: () {
        if (controller.text.isNotEmpty) {
          controller.clear();
        }
      },
      child: const Icon(Icons.add),
    );
  }
}
