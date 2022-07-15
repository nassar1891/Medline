import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:medline/core/app_colors.dart';
import 'package:medline/core/widgets/authentication_text_field.dart';
import 'package:medline/core/widgets/next_button.dart';
import 'package:medline/pages/login/confirmation.dart';
import 'package:medline/pages/login/widgets/login_message.dart';
import 'package:medline/core/api/mutations.dart';

import '../../core/widgets/app_logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 38),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppLogo(),
                const SizedBox(height: 50),
                const LoginMessage(),
                const SizedBox(height: 31),
                AuthenticationTextField(
                  hint: 'Phone Number',
                  controller: phoneController,
                ),
                const SizedBox(height: 31),
                Mutation(
                    options: MutationOptions(
                      document: gql(Mutations.sendSMS()),
                      // or do something with the result.data on completion
                      onCompleted: (dynamic resultData) {
                        if (resultData != null) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => ConfirmationScreen(
                                phoneNumber: phoneController.value.text, operation: resultData['sendSms']['operation'],
                              ),
                            ),
                          );
                        }
                      },
                      onError: (OperationException? error) {
                        print(error);
                      },
                    ),
                    builder: (RunMutation runMutation, QueryResult? result) =>
                        NextButton(
                          action: () {
                            if (phoneController.value.text != '') {
                              runMutation({
                                'phoneNumber':
                                '+2' + phoneController.value.text,
                              });
                            }
                          },
                        )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
