import 'package:flutter/material.dart';
import 'package:moni_app/Models/member_model.dart';
import 'package:moni_app/Styles/color.dart';
import 'package:moni_app/Styles/dimens.dart';

class MembersListContainer extends StatefulWidget {
  const MembersListContainer({Key? key, this.title, this.agentsList})
      : super(key: key);

  final List<ActiveAgent>? agentsList;

  final String? title;

  @override
  State<MembersListContainer> createState() => _MembersListContainerState();
}

class _MembersListContainerState extends State<MembersListContainer> {
  bool _isShow = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),

          ///Header
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.title!,
                  style: TextStyle(
                      fontSize: AppSize.listTitle, color: AppColor.black),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isShow = !_isShow;
                    });
                  },
                  child: Icon(
                    _isShow == true ? Icons.minimize : Icons.add,
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
          if (_isShow == true)
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
          if (_isShow == true) const Divider(),
        ],
      ),
    );
  }
}
