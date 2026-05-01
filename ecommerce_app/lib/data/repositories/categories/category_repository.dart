import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/features/shop/models/category_model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/exception/firebase_exceptions.dart';
import '../../../utils/exception/platform_exceptions.dart';
import '../firebase_storage_service.dart';

class CategoryRepository extends GetxController{
  static CategoryRepository get instance => Get.find();

  //Variable
  final _db = FirebaseFirestore.instance;

  //Get all Categories
  Future<List<CategoryModel>> getAllCategories() async {
    try{
      final snapshot = await _db.collection("ECategories").get();
      final list = snapshot.docs.map((document) => CategoryModel.fromSnapshot(document)).toList();
      return list;

    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    }on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  //Get sub categories

  //upload categories to the cloud firebase---------
  Future<void> uploadDummyData(List<CategoryModel> categories) async {
    try{
      //upload all the categories along with their images
      final storage = Get.put(TFirebaseStorageService());

      //load through each category
      for(var category in categories){
        //Get ImageData link from the local assets
        final file = await storage.getImageDataFromAssets(category.image);

        //upload image and get its url
        final url = await storage.uploadImageData('ECategories', file, category.name);

        //assign url to category .image attribute
        category.image = url;

        //storage category in fire Store
        await _db.collection("ECategories").doc(category.id).set(category.toJson());
      }
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    }on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

}