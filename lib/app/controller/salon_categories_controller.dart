/* GlamGig */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glamgig_stylist_flutter/app/backend/api/handler.dart';
import 'package:glamgig_stylist_flutter/app/backend/models/add_profile_model.dart';
import 'package:glamgig_stylist_flutter/app/backend/parse/salon_categories_parse.dart';
import 'package:glamgig_stylist_flutter/app/controller/profile_categories_controller.dart';
import 'package:glamgig_stylist_flutter/app/util/theme.dart';
import 'package:glamgig_stylist_flutter/app/util/toast.dart';

class SalonCategoriesController extends GetxController implements GetxService {
  final SalonCategoriesParser parser;

  SalonCategoriesController({required this.parser});

  bool apiCalled = false;

  List<AddProfileModel> _selectEditProfileList = <AddProfileModel>[];
  List<AddProfileModel> get selectEditProfileList => _selectEditProfileList;

  List<int> selectedCategories = [];
  @override
  void onInit() {
    super.onInit();
    selectCategories();
    if (Get.arguments[0] != null) {
      selectedCategories = [];
      var ids = Get.arguments[0].toString().split(',');
      selectedCategories = ids.map((data) => int.parse(data)).toList();
      debugPrint(selectedCategories.toString());
    }
  }

  Future<void> selectCategories() async {
    var response = await parser.selectCategories();
    apiCalled = true;
    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = Map<String, dynamic>.from(response.body);
      var cates = myMap['data'];
      _selectEditProfileList = [];
      cates.forEach((data) {
        AddProfileModel datas = AddProfileModel.fromJson(data);
        var index = selectedCategories.indexOf(datas.id as int);
        if (index >= 0) {
          datas.isChecked = true;
        } else {
          datas.isChecked = false;
        }
        _selectEditProfileList.add(datas);
      });
      debugPrint(selectEditProfileList.length.toString());
    } else {
      ApiChecker.checkApi(response);
    }
    update();
  }

  void updateStatus(bool status, int id) {
    debugPrint(status.toString());
    debugPrint(id.toString());
    var itemIndex =
        _selectEditProfileList.indexWhere((element) => element.id == id);
    _selectEditProfileList[itemIndex].isChecked = status;
    if (status == false) {
      // remove
      selectedCategories.remove(id);
    } else {
      selectedCategories.add(id);
      // add
    }
    debugPrint(selectedCategories.toString());
    update();
  }

  Future<void> updateCate() async {
    if (selectedCategories.isEmpty) {
      showToast('Please select one of the categories');
      return;
    }
    Get.dialog(
      SimpleDialog(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              const CircularProgressIndicator(
                color: ThemeProvider.appColor,
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                  child: Text(
                "Please wait".tr,
                style: const TextStyle(fontFamily: 'bold'),
              )),
            ],
          )
        ],
      ),
      barrierDismissible: false,
    );
    var response = await parser.updateCate(selectedCategories.join(','));
    Get.back();
    debugPrint(response.bodyString);
    if (response.statusCode == 200) {
      successToast('Categories Updated');
      Get.find<ProfileCategoriesController>().getCateById();
      onBack();
    } else {
      ApiChecker.checkApi(response);
    }
    update();
  }

  void onBack() {
    var context = Get.context as BuildContext;
    Navigator.of(context).pop(true);
  }
}
