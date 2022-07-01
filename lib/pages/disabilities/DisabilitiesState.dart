import 'package:flutter/material.dart';
  import 'package:medline/pages/medicine/MedicineState.dart';

class PostInDisabilities extends StatefulWidget {
  const PostInDisabilities({Key? key}) : super(key: key);

  @override
  State<PostInDisabilities> createState() => _PostInDisabilitiesState();
}

class _PostInDisabilitiesState extends State<PostInDisabilities> {
  String? type;
  TextEditingController locationController = TextEditingController();
  TextEditingController commentController = TextEditingController();

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
              const SizedBox(height: 100,),



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

              const SizedBox(height: 60,),
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
