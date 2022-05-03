import 'package:flutter/material.dart';
import 'package:moni_app/Styles/color.dart';
import 'package:moni_app/Styles/dimens.dart';

class ClusterMainPage extends StatefulWidget {
  const ClusterMainPage({Key? key}) : super(key: key);

  @override
  State<ClusterMainPage> createState() => _ClusterMainPageState();
}

class _ClusterMainPageState extends State<ClusterMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 500,
          flexibleSpace: Container(
            height: 500,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/background.png'),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 85,
                  ),

                  ///Profile section
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Moni dreambig community',
                            style: TextStyle(
                                fontSize: AppSize.mediumText,
                                color: AppColor.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ///Repayment date and day field
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: AppColor.darkBg,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Text.rich(
                                      TextSpan(children: [
                                        TextSpan(
                                            text: "Repayment rate: ",
                                            style: TextStyle(
                                              color: AppColor.grey,
                                              fontSize: AppSize.mediumText,
                                            )),
                                        TextSpan(
                                            text: "60%",
                                            style: TextStyle(
                                              color: AppColor.darkAmber,
                                              fontWeight: FontWeight.bold,
                                              fontSize: AppSize.mediumText,
                                            ))
                                      ]),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: AppColor.darkBg,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Text.rich(
                                      TextSpan(children: [
                                        TextSpan(
                                            text: "Repayment Day: ",
                                            style: TextStyle(
                                              color: AppColor.grey,
                                              fontSize: AppSize.mediumText,
                                            )),
                                        TextSpan(
                                            text: "Every Sunday",
                                            style: TextStyle(
                                              color: AppColor.green,
                                              fontWeight: FontWeight.bold,
                                              fontSize: AppSize.mediumText,
                                            ))
                                      ]),
                                    ),
                                  ),
                                ],
                              ),

                              ///Profile Image field
                              Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage("assets/avatar.png"))),
                              )
                            ],
                          ),
                        ]),
                  ),
                  Divider(
                    color: AppColor.dividerColor,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
          title: const Text('My Cluster'),
        )
      ]),
    );
  }
}
