import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddCat extends StatefulWidget {
  const AddCat({Key? key}) : super(key: key);


  @override
  State<AddCat> createState() => _AddCatState();
}
final TextEditingController nameController = TextEditingController();
final ImagePicker _picker = ImagePicker();
final storage = FirebaseStorage.instance;
final firestore = FirebaseFirestore.instance;
class _AddCatState extends State<AddCat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.orange,
      appBar: AppBar(
        title: Text('Add new Category',
            style: TextStyle(
                color: Colors.black,
                fontSize:20,fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.orange,
          elevation: 2.0,
        ),

      body: Center(
    child: Card(
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black, //<-- SEE HERE
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
         margin:EdgeInsets.all(20),
         child:SingleChildScrollView(
            child:Padding(
               padding:EdgeInsets.all(16),
               child:Form
                 (child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   CircleAvatar(
                     radius: 40,

                   ),
                   TextButton.icon(icon:Icon(Icons.image),label:Text('Add Image'),onPressed: ()async{
                     XFile? myImage =  await _picker.pickImage(source: ImageSource.gallery);

                     Reference imageref= storage.ref('images');
                     Uint8List imagebytes = await myImage!.readAsBytes();
                     imageref.putData(imagebytes).then((p0) => print(p0.ref));


                     firestore.collection('categories').add({"name":nameController.text,"image":imageref});
                   },),
                   TextFormField(
                      keyboardType: TextInputType.name,
                     decoration: InputDecoration(
                       labelText: 'your category name',
                    ),
                     controller: nameController,
                   ),

                   SizedBox(height:12),
                   ElevatedButton( child:Text('AddCategory', style: TextStyle(color: Colors.black)), onPressed: (){},  style: ElevatedButton.styleFrom(
                     primary: Colors.orange, // Background color
                   ),)

                 ],

               ),
    ),
         ),
    ),
      ),

));

  }
}



