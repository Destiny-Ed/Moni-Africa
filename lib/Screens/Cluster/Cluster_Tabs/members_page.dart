import 'package:flutter/material.dart';
import 'package:moni_app/Styles/color.dart';
import 'package:moni_app/Styles/dimens.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({Key? key}) : super(key: key);

  @override
  State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ...List.generate(1000, (index) {
          return Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),

                ///Header
                Container(
                  // margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Overdue Loans",
                        style: TextStyle(
                            fontSize: AppSize.listTitle, color: AppColor.black),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.minimize,
                          color: AppColor.grey,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  // contentPadding: const EdgeInsets.only(top: 10),
                  leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/avatar.png"),
                        )),
                  ),
                  title: Row(
                    children: [
                      Text(
                        "Florence Tanika",
                        style: TextStyle(
                            color: AppColor.black, fontSize: AppSize.listTitle),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(
                          Icons.lens,
                          size: 4,
                          color: AppColor.grey,
                        ),
                      ),
                      Text(
                        '3 days over due',
                        style: TextStyle(
                            color: AppColor.red, fontSize: AppSize.smallText),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    '₦10,555,000 Late loan ',
                    style: TextStyle(
                        fontSize: AppSize.smallText,
                        color: AppColor.red,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
              ],
            ),
          );
        }),
      ],
    );
  }
}
