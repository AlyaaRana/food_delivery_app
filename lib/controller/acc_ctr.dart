import 'package:get/get.dart';

class AccountController extends GetxController {
  final RxString name = RxString("");
  final RxString password = RxString("");
  final RxString mailAddress = RxString("");
  final RxInt phoneNumber = 0.obs;
}