import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:medline/pages/categories/categories.dart';
import 'package:medline/pages/medicine/MedicineFeed.dart';
import 'package:medline/pages/profile/profile.dart';
import 'package:medline/pages/register/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:medline/core/api/mutations.dart';
import '../../core/widgets/authentication_text_field.dart';
import '../../core/widgets/next_button.dart';

class ConfirmationScreen extends StatefulWidget {
  final String phoneNumber;
  final String operation;

  const ConfirmationScreen(
      {required this.phoneNumber, required this.operation, Key? key})
      : super(key: key);

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  final TextEditingController confirmationCode = TextEditingController();

  Future<void> saveUserAccessToken(String accessToken) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('access_token', accessToken);
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: const Color(0xff151515),
      appBar: AppBar(
        backgroundColor: const Color(0xff151515),
        title: const Text(
          'Together',
          style: TextStyle(color: Colors.green, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          const SizedBox(
          height: 30,
        ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * .1),
            child: const Text(
              'Verify your phone number, fill in the code',
              style: TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Didn't receive a code?",
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              TextButton(
                  onPressed: () {
                    //TODO  : resend code button
                  },
                  child: const Text(
                    'Resend Code.',
                    style: TextStyle(color: Colors.green),
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          AuthenticationTextField(
            hint: 'Confirmation Code',
            controller: confirmationCode,
            keyboardType: TextInputType.phone,
            maxLength: 13,
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 20,
          ),
          Mutation(
            options: MutationOptions(
              document: gql(Mutations.loginUser()),
              onCompleted: (dynamic resultData) {
                if (resultData != null) {
                  print(resultData);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) =>
                          Profile(
                              accessToken: resultData['login']
                              ['accessToken'])));
                }
              },
              onError: (OperationException? error) {
                print(error);
              },
            ),
            builder:
                (RunMutation runMutation, QueryResult? result) =>
                NextButton(
                  action: () {
                    if (widget.operation == 'register') {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => RegisterPage(
                              phoneNumber: widget.phoneNumber,
                              confirmationCode: confirmationCode.value.text)));
                    }
                    else{
                      runMutation({
                        'phoneNumber': '+2' + widget.phoneNumber,
                        'confirmationCode': confirmationCode.value.text
                      });
                    }
                  },
                )
        )
        ],
      ),
    ),);
  }

  Widget _buildCodeNumberBox(String codeNumber) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 60,
        width: 60,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(.1),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.green),
          ),
          child: Center(
            child: Text(
              codeNumber,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NumericBad extends StatelessWidget {
  final Function(int) onNumberSelected;

  const NumericBad({Key? key, required this.onNumberSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.11,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildNumber(1),
              _buildNumber(2),
              _buildNumber(3),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.11,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildNumber(4),
              _buildNumber(5),
              _buildNumber(6),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.11,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildNumber(7),
              _buildNumber(8),
              _buildNumber(9),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.11,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildEmptySpace(),
              _buildNumber(0),
              _buildBackSpace(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNumber(int number) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onNumberSelected(number);
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptySpace() {
    return Expanded(
      child: Container(),
    );
  }

  Widget _buildBackSpace() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onNumberSelected(-1);
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Center(
              child: Icon(
                Icons.clear,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
