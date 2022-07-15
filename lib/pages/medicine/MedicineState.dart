import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../core/api/mutations.dart';
import '../categories/categories.dart';

class PostInMedicine extends StatefulWidget {
    const PostInMedicine({Key? key}) : super(key: key);

  @override
  State<PostInMedicine> createState() => _PostInMedicineState();
}

class _PostInMedicineState extends State<PostInMedicine> {
    String? type;
    TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff151515),
      appBar: AppBar(
        backgroundColor: const Color(0xff151515),
        title: const Text('Medline' , style: TextStyle(color: Colors.green,fontSize: 25),),
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
              const SizedBox(height: 100,),

              CustomDropDown(
                value: type,
                onChanged: (value){
                setState(() {
                  type= value;
                });
              }, textHint: 'Type',),


              const SizedBox(height: 20,),

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

              const SizedBox(height: 60,),
              Mutation(
                  options: MutationOptions(
                    document: gql(Mutations.createMedicinePost()),
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
                          // if (phoneController.value.text != '') {
                          //   runMutation({
                          //   });
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


class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,this.onTap}) : super(key: key);
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green.withOpacity(.3),
        ),
        child: const Center(
          child: Text('POST' , style: TextStyle(color: Colors.green , fontWeight: FontWeight.bold,fontSize: 18),),
        ),
      ),
    );
  }
}


class CustomDropDown extends StatelessWidget {
  CustomDropDown({Key? key ,this.onChanged,this.value,required this.textHint}) : super(key: key);
  final List<String> types = ['A+', 'A-', 'B+', 'B-', 'AB+','AB-' , 'O+' , 'O-'];
  final void Function(String?)? onChanged;
  final String? value;
  final String? textHint;
  @override
  Widget build(BuildContext context) {
    return  Container(
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
        hint:  Text('$textHint',style: const TextStyle(color: Colors.grey),),
        value: value,
        dropdownColor: Colors.black,
        items: types.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value, style: const TextStyle(color: Colors.green),
            ),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
