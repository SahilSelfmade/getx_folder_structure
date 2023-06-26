// ignore_for_file: invalid_use_of_protected_member

import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_folder_structure/core/constants/local_storage_constants.dart';

class GetStorageController extends GetxController {
  GetStorage box = GetStorage();
  var isLogin = false.obs;

  final _addressList = [].obs;
  final _deviceToken = ''.obs;
  final _email = ''.obs;
  final _firstName = ''.obs;
  final _lastName = ''.obs;
  final _token = ''.obs;

  List _currencyList = [].obs;

  init() async {
    _token.value = box.read(AppLocalStorageConstants.tokenString) ?? '';
    _addressList.value = box.read(AppLocalStorageConstants.addressListString) ?? [''];
    _currencyList = box.read(AppLocalStorageConstants.currencyListString) ?? [''];
    _lastName.value = box.read(AppLocalStorageConstants.lastNameString) ?? '';
    _firstName.value = box.read(AppLocalStorageConstants.firstNameString) ?? '';
    _email.value = box.read(AppLocalStorageConstants.emailString) ?? '';
  }

  get token => _token.value;

  get currencyList => _currencyList;

  get addressList => _addressList.value;

  get firstName => _firstName.value;

  get lastName => _lastName.value;

  get email => _email.value;

// ! User Token
  void setUserToken(String value) {
    _token.value = value;
    setPref(AppLocalStorageConstants.tokenString, value);
  }

// ! Firt Name
  void setFirstName(String value) {
    _firstName.value = value;
    setPref(AppLocalStorageConstants.firstNameString, value);
    update();
  }

// ! Last Name
  void setLastName(String value) {
    _lastName.value = value;
    setPref(AppLocalStorageConstants.lastNameString, value);
    update();
  }

// ! Email
  void setEmail(String value) {
    _email.value = value;
    setPref(AppLocalStorageConstants.emailString, value);
    update();
  }

// ! Test List Variable
  setCurrencyList(List value) {
    _currencyList = value;
    setPref(AppLocalStorageConstants.currencyListString, value);
    update();
  }

  void setPref(String key, dynamic value) async {
    await box.write(key, value);
  }

  getPref(String key) async {
    await box.read(key);
  }

  Future<void> logOut() async {
    await box.erase();

    isLogin(false);
    log('ERASED Local Stoarge');
  }
}
