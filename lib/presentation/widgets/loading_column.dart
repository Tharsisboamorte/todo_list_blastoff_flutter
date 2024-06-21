import 'package:flutter/material.dart';

class LoadingColumn extends StatelessWidget {
  const LoadingColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}