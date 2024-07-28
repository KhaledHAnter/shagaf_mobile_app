import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPsquare extends StatelessWidget {
  const OTPsquare({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 17,
      width: MediaQuery.sizeOf(context).width / 12,
      child: Center(
        child: TextFormField(
          // showCursor: false,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8),
              border: buildBorder(),
              focusedBorder: buildBorder(),
              enabledBorder: buildBorder()),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty) {
              FocusScope.of(context).previousFocus();
            }
          },
          style: Theme.of(context).textTheme.headlineLarge,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
      ),
    );
  }

  UnderlineInputBorder buildBorder() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffF04C29),
        width: 2,
      ),
    );
  }
}
