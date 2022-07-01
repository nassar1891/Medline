import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:medline/core/app_colors.dart';
import 'package:medline/core/widgets/app_logo.dart';
import 'package:medline/core/widgets/authentication_text_field.dart';
import 'package:medline/core/widgets/next_button.dart';
import 'package:medline/pages/categories/categories.dart';
import 'package:medline/pages/login/confirmation.dart';
import 'package:medline/pages/login/login_page.dart';
import 'package:medline/pages/medicine/MedicineFeed.dart';
import 'package:medline/pages/register/widgets/registration_agreement/widgets/registration_agreement.dart';
import 'package:medline/pages/register/widgets/registration_agreement/registration_agreement_text.dart';
import 'package:medline/pages/register/widgets/registration_agreement/widgets/registration_check_box.dart';
import 'package:medline/pages/register/widgets/registration_header.dart';
import 'package:medline/core/api/mutations.dart';

class RegisterPage extends StatefulWidget {
  final String phoneNumber;
  final String confirmationCode;

  const RegisterPage({required this.phoneNumber,required this.confirmationCode,Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    print("phone:"+widget.phoneNumber);
    print("code:"+widget.confirmationCode);
    String name = "ahmed";
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
                const RegistrationHeader(),
                const SizedBox(height: 31),
                AuthenticationTextField(
                  hint: 'Name',
                  controller: nameController,
                ),
                const SizedBox(height: 31),
                RegistrationAgreement(
                  text: RegistrationAgreementText(
                    firstPart: 'I\'ve read and accepted the ',
                    agreementPart: 'Privacy Policy ',
                    secondaryPart:
                    'and agree that my personal data will be processed by you',
                    onTap: () {
                      // TODO: implement
                    },
                  ),
                  checkBox: RegistrationCheckBox(
                    value: true,
                    onChanged: (newValue) {
                      // TODO: implement
                    },
                  ),
                ),
                const SizedBox(height: 19),
                RegistrationAgreement(
                  text: RegistrationAgreementText(
                    firstPart: 'I\'ve read and accepted the ',
                    agreementPart: 'Terms Of Use',
                    onTap: () {
                      // TODO: implement
                    },
                  ),
                  checkBox: RegistrationCheckBox(
                    value: true,
                    onChanged: (newValue) {
                      // TODO: implement
                    },
                  ),
                ),
                const SizedBox(height: 46),
                Mutation(
                  options: MutationOptions(
                      document: gql(Mutations.registerUser(nameController.value.text, widget.phoneNumber, widget.confirmationCode )),
                     //document: gql(Mutations.registerUser(name, widget.phoneNumber, widget.confirmationCode)),
                    // or do something with the result.data on completion
                    onCompleted: (dynamic resultData) {
                      if (resultData != null) {
                        print(resultData['register']['accessToken']);
                        // saveUserAccessToken(resultData['register']['accessToken']);
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CategoriesPage()));
                      }
                    },
                    onError: (OperationException? error) {
                      print(error);
                    },
                  ),
                  builder: (RunMutation runMutation, QueryResult? result) =>
                      InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          if(widget.phoneNumber != '' && widget.confirmationCode != ''){
                            runMutation({
                              'phoneNumber': '+2' + widget.phoneNumber,
                              'confirmationCode': widget.confirmationCode
                            });
                          }
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green.withOpacity(.3),
                          ),
                          child: Center(
                            child: Text(
                              'Confirm'.toUpperCase(),
                              style: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
