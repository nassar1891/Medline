import 'package:flutter/material.dart';
import 'package:medline/pages/register/widgets/registration_agreement/registration_agreement_text.dart';
import 'package:medline/pages/register/widgets/registration_agreement/widgets/registration_check_box.dart';

class RegistrationAgreement extends StatelessWidget {
  final RegistrationAgreementText text;
  final RegistrationCheckBox checkBox;

  const RegistrationAgreement({
    required this.text,
    required this.checkBox,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        text,
        const SizedBox(width: 16),
        checkBox,
      ],
    );
  }
}
