import 'package:flutter/material.dart';
import 'package:food_delivery_app/controller/acc_ctr.dart';
import 'package:food_delivery_app/widget/profile/input_text.dart';
import 'package:get/get.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final AccountController controller = Get.put(AccountController());
  Image? _image;

  late TextEditingController nameCtr;
  late TextEditingController pwctr;
  late TextEditingController mailCtr;
  late TextEditingController phoneCtr;

  @override
  void initState() {
    super.initState();
    nameCtr = TextEditingController();
    pwctr = TextEditingController();
    mailCtr = TextEditingController();
    phoneCtr = TextEditingController();
    _image = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Done",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                // InputText(
                //     labelText: "Name",
                //     textController: nameCtr
                // ),
                // InputText(
                //     labelText: "Mail Address",
                //     textController: mailCtr
                // ),
                // InputText(
                //     labelText: "Phone Number",
                //     textController: phoneCtr
                // ),
                // InputText(
                //     labelText: "Password",
                //     textController: pwctr
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
