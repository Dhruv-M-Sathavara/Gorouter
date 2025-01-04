import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagepickerLearn extends StatefulWidget {
  const ImagepickerLearn({super.key});

  @override
  State<ImagepickerLearn> createState() => _ImagepickerLearnState();
}

class _ImagepickerLearnState extends State<ImagepickerLearn> {
  ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>?files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Imageb picker" ,style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),

       body: 
       Center(child: Column(children: [
      Container(color: Colors.grey.shade200,
      height: 300,
      width: double.infinity,
      child:Center(child:file==null? Text("Image is no selected"):Image.file(File(file!.path),fit: BoxFit.cover,))
      
      ),
      ElevatedButton(onPressed: () async{
        final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
        setState(() {
          file = photo;
        });
        print('Image Picked');
        print(photo!.path);
      }, child: Text("Pick Image")),
      ElevatedButton(onPressed: ()async{
        final List<XFile>? photos = await _picker.pickMultiImage() ;
        setState(() {
          files=photos;
        });
        print('Images selected');
        for(int i =0;i<files!.length;i++){
          print(files![i].path);
        }
      }, child: Text('Pick Multiple Image'))
    ]))
    );
  }
}