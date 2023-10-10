import 'package:flutter/material.dart';

class GithubButton extends StatelessWidget {
  const GithubButton({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Image.asset(
        'assets/images/github.png',
        color: Colors.white,
      ),
    );
  }
}
