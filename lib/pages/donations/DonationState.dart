import 'package:flutter/material.dart';
import 'package:medline/pages/medicine/MedicineState.dart';


class PostInDonation extends StatefulWidget {
  const PostInDonation({Key? key}) : super(key: key);

  @override
  State<PostInDonation> createState() => _PostInDonationState();
}

class _PostInDonationState extends State<PostInDonation> {
  String? type;
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
              const SizedBox(height: 70,),

              CustomDropDown(
                value: type,
                onChanged: (value){
                  setState(() {
                    type= value;
                  });
                },),


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
                controller: numOfDonatorsController,
                style: const TextStyle(color: Colors.green),
                decoration: const InputDecoration(
                    border:InputBorder.none,
                    hintText: 'num of donators',
                    hintStyle: TextStyle(color:Colors.grey),
                    hintTextDirection: TextDirection.ltr,
                    filled: true,
                    fillColor: Colors.white10
                ),
              ),

              const SizedBox(height: 15,),

              TextFormField(
                maxLines:5,
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

              const SizedBox(height: 50,),
              CustomButton(
                onTap: (){
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
