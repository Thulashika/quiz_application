import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton( 
    this.buttonText,
    {
    super.key,
  });

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 253,
        child: ElevatedButton(
          onPressed: () {}, 
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
            child: Text(
              buttonText,
                style:  const TextStyle(
                  color: Color(0xff013568), 
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
            ),
          ),
        ),
    );
  }
}
