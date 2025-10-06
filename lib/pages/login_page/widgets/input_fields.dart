import 'package:flutter/material.dart';

class InputFields extends StatefulWidget {
  final bool savePassword;
  final bool isPasswordVisible;
  final ValueChanged<bool> onSavePasswordChanged;
  final ValueChanged<bool> onPasswordVisibilityChanged;

  const InputFields({
    super.key,
    required this.savePassword,
    required this.isPasswordVisible,
    required this.onSavePasswordChanged,
    required this.onPasswordVisibilityChanged,
  });

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Phone',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFF5F2FF),
            hintText: '0123456789',
            hintStyle: TextStyle(color: Colors.grey[500]),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
            ),
          ),
          keyboardType: TextInputType.phone,
        ),
        const SizedBox(height: 24),
        Text(
          'Password',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          obscureText: !widget.isPasswordVisible,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFF5F2FF),
            hintText: 'At least 8 characters',
            hintStyle: TextStyle(color: Colors.grey[500]),
            suffixIcon: IconButton(
              icon: Icon(
                widget.isPasswordVisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: Colors.grey[600],
                size: 20,
              ),
              onPressed: () {
                widget.onPasswordVisibilityChanged(!widget.isPasswordVisible);
              },
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Transform.scale(
              scale: 0.8,
              child: Checkbox(
                value: widget.savePassword,
                onChanged: (v) {
                  widget.onSavePasswordChanged(v ?? false);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                side: BorderSide(color: Colors.grey.shade400, width: 1.5),
                activeColor: const Color(0xFF4CAF50),
              ),
            ),
            Text(
              'Save password',
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.purple[400],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
