import 'package:flutter/material.dart';

class CerdentialsBackArrow extends StatelessWidget {
  const CerdentialsBackArrow({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
