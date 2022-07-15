import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:medline/pages/categories/categories.dart';
import 'package:medline/pages/medicine/MedicineState.dart';

import '../../core/api/mutations.dart';


class PostInDonation extends StatefulWidget {
  const PostInDonation({Key? key}) : super(key: key);

  @override
  State<PostInDonation> createState() => _PostInDonationState();
}

class _PostInDonationState extends State<PostInDonation> {
  String? type;
  String? bloodType;
  final List<String> types = ['request','offer'];

  TextEditingController locationController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  TextEditingController numOfDonatorsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff151515),
      appBar: AppBar(
        backgroundColor: const Color(0xff151515),
        title: const Text('Together' , style: TextStyle(color: Colors.green,fontSize: 25),),
        centerTitle: true,
        elevation: 0.0,
      ),

      body: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children:  [
              const SizedBox(height: 40,),

              const Text('Create a post for your case!' ,style: TextStyle(color: Colors.white,fontSize: 20),),
              const SizedBox(height: 30,),

              CustomDropDown(
                value: bloodType,
                onChanged: (value){
                  setState(() {
                    bloodType= value;
                  });
                }, textHint: 'Blood Type',),


              const SizedBox(height: 15,),
              Container(
                color: Colors.white10,
                padding: const EdgeInsets.only(left: 10),
                child: DropdownButton(
                  focusColor: Colors.white10,
                  iconDisabledColor: Colors.white10,
                  iconEnabledColor: Colors.white10,
                  isExpanded: true,
                  underline: Container(
                    height: 0,
                    color: Colors.transparent,
                  ),
                  alignment: AlignmentDirectional.centerEnd,
                  hint:  const Text('Type',style: TextStyle(color: Colors.grey),),
                  value: type,
                  dropdownColor: Colors.black,
                  items: types.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: const TextStyle(color: Colors.green),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      type = value as String?;
                    });
                  }
                  ),
              ),
              const SizedBox(height: 15,),

              TextFormField(
                controller: locationController,
                style: const TextStyle(color: Colors.green),
                decoration: const InputDecoration(
                    border:InputBorder.none,
                    hintText: 'Location',
                    hintStyle: TextStyle(color:Colors.grey),
                    hintTextDirection: TextDirection.ltr,
                    filled: true,
                    fillColor: Colors.white10
                ),
              ),
              const SizedBox(height: 15,),

              TextFormField(
                maxLines:4,
                controller: commentController,
                style: const TextStyle(color: Colors.green),
                decoration: const InputDecoration(
                  border:InputBorder.none,
                  hintText: 'Your Comment',
                  hintStyle: TextStyle(color:Colors.grey),
                  hintTextDirection: TextDirection.ltr,
                  filled: true,
                  fillColor: Colors.white10,

                ),
              ),

              const SizedBox(height: 30,),
              Mutation(
                  options: MutationOptions(
                    document: gql(Mutations.createDonationPost()),
                    // or do something with the result.data on completion
                    onCompleted: (dynamic resultData) {
                      if (resultData != null) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const CategoriesPage(),
                          ),
                        );
                      }
                    },
                    onError: (OperationException? error) {
                      print(error);
                    },
                  ),
                  builder: (RunMutation runMutation, QueryResult? result) =>
                      CustomButton(
                        onTap: () {
                          if (commentController.value.text!='') {
                            runMutation({
                              'accessToken': '',
                              'content': commentController.value.text,
                              'address': locationController.value.text,
                              'bloodType': bloodType,
                              'type': type,
                              'showPhoneNumber': ''
                            });
                          }
                        },
                      )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
