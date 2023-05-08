// ignore_for_file: invalid_use_of_protected_member

import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_folder_structure/core/constants/local_storage_constants.dart';

class GetStorageController extends GetxController {
  GetStorage box = GetStorage();
  var isLogin = false.obs;

  final _addressList = [].obs;
  final _currency = 'USD'.obs;
  final _email = ''.obs;
  final _firstName = ''.obs;
  final _hotelList = [].obs;
  final _lastName = ''.obs;
  final _token = ''.obs;

  List _currencyList = [].obs;

  init() async {
    // _isLogin.value = box.read(isLogInString) ?? false;
    _token.value = box.read(LocalStorageConstants.tokenString) ?? '';
    _hotelList.value = box.read(LocalStorageConstants.hotelListString) ?? [""];
    _addressList.value = box.read(LocalStorageConstants.addressListString) ?? [""];
    _currency.value = box.read(LocalStorageConstants.currencyString) ?? '';
    _currencyList = box.read(LocalStorageConstants.currencyListString) ?? [""];
    _lastName.value = box.read(LocalStorageConstants.lastNameString) ?? '';
    _firstName.value = box.read(LocalStorageConstants.firstNameString) ?? '';
    _email.value = box.read(LocalStorageConstants.emailString) ?? '';
  }

  // get isLogin => _isLogin.value;
  get token => _token.value;

  get currency => _currency.value;

  get currencyList => _currencyList;

  get hotelList => _hotelList.value;

  get addressList => _addressList.value;

  get firstName => _firstName.value;

  get lastName => _lastName.value;

  get email => _email.value;

  // void setIsLogin(bool value) {
  //   _isLogin.value = value;
  //   setPref(isLogInString, value);
  // }

  void setUserToken(String value) {
    _token.value = value;
    setPref(LocalStorageConstants.tokenString, value);
  }

  void setCurrency(String value) {
    _currency.value = value;
    setPref(LocalStorageConstants.currencyString, value);
  }

  void setFirstName(String value) {
    _firstName.value = value;
    setPref(LocalStorageConstants.firstNameString, value);
    update();
  }

  void setLastName(String value) {
    _lastName.value = value;
    setPref(LocalStorageConstants.lastNameString, value);
    update();
  }

  void setEmail(String value) {
    _email.value = value;
    setPref(LocalStorageConstants.emailString, value);
    update();
  }

  setCurrencyList(List value) {
    _currencyList = value;
    setPref(LocalStorageConstants.currencyListString, value);
    update();
  }

  setHotelList(List value) {
    _hotelList.value = value;
    setPref(LocalStorageConstants.hotelListString, value);
    update();
  }

  // setAddress(List<String> value) {
  //   // Remove duplicates from the input list
  //   final uniqueValues = value.toSet().toList();

  //   // Limit the list to a maximum of 5 elements
  //   final limitedValues = uniqueValues.length <= 5 ? uniqueValues : uniqueValues.sublist(0, 5);

  //   // Set the controller's list to the updated list
  //   _addressList.value = limitedValues;

  //   // Save the updated list to shared preferences
  //   setPref(addressListString, limitedValues);

  //   // Rebuild any widgets dependent on addressList
  //   update();
  // }

  Future<void> setAddress({value, placeIdToDelete}) async {
    final box = GetStorage();
    print("$value\n$placeIdToDelete");
    log("1 $placeIdToDelete");

    List<dynamic>? addresses = box.read<List<dynamic>>(LocalStorageConstants.addressListString);
    // addresses!.clear();
    addresses ??= [];

    // Check if the new address already exists in the list
    if (!addresses.contains(value) && value != null) {
      // Add the new address to the beginning of the list
      addresses.insert(0, value);

      // Only keep the most recent 5 addresses
      if (addresses.length > 5) {
        addresses.removeLast();
      }

      // Save the updated list of addresses to GetStorage
      await box.write(LocalStorageConstants.addressListString, addresses);
    } else {
      // Delete an address
      if (placeIdToDelete != null) {
        log("hekljasflkjl $placeIdToDelete");
        addresses.removeWhere((address) => (jsonDecode(address)['place_id'] == (json.decode(placeIdToDelete))));

        // return jsonDecode(address)['place_id'] == placeIdToDelete;

        box.write(LocalStorageConstants.addressListString, addresses);

        log("hekljasflkjl 2");
      }
    }
  }

  void setPref(String key, dynamic value) async {
    await box.write(key, value);
  }

  getPref(String key) async {
    await box.read(key);
  }

  Future<void> logOut() async {
    await box.erase();
    await box.erase();
    isLogin(false);
    print('ERASEDDDDDDD');
  }
}
