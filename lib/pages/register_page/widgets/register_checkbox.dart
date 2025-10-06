import 'package:flutter/material.dart';

class RegisterCheckbox extends StatelessWidget {
  final bool isCitizen;
  final bool agreeToTerms;
  final ValueChanged<bool> onCitizenChanged;
  final ValueChanged<bool> onTermsChanged;

  const RegisterCheckbox({
    super.key,
    required this.isCitizen,
    required this.agreeToTerms,
    required this.onCitizenChanged,
    required this.onTermsChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Transform.scale(
              scale: 0.8,
              child: Checkbox(
                value: isCitizen,
                onChanged: (v) => onCitizenChanged(v ?? false),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                side: BorderSide(color: Colors.grey.shade400, width: 1.5),
                activeColor: const Color(0xFF4CAF50),
              ),
            ),
            Expanded(
              child: Text(
                'Are you a citizen of Butuan City?',
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.scale(
              scale: 0.8,
              child: Checkbox(
                value: agreeToTerms,
                onChanged: (v) => onTermsChanged(v ?? false),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                side: BorderSide(color: Colors.grey.shade400, width: 1.5),
                activeColor: const Color(0xFF4CAF50),
              ),
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: 'Be creating your account you have to agree with our ',
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  children: [
                    TextSpan(
                      text: 'Terms and conditions',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.purple[400],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
