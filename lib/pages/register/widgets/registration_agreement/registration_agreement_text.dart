import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/app_colors.dart';

class RegistrationAgreementText extends StatelessWidget {
  final String firstPart;
  final String agreementPart;
  final Function onTap;
  final String? secondaryPart;

  const RegistrationAgreementText({
    required this.firstPart,
    required this.agreementPart,
    required this.onTap,
    this.secondaryPart,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.subtitle2?.copyWith(color: AppColors.text, fontWeight: FontWeight.bold),
          children: [
            TextSpan(text: firstPart),
            TextSpan(
              text: agreementPart,
              recognizer: TapGestureRecognizer()..onTap = () => onTap(),
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    color: AppColors.brandColor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
            ),
            if (secondaryPart != null) TextSpan(text: secondaryPart),
          ],
        ),
      ),
    );
  }
}
