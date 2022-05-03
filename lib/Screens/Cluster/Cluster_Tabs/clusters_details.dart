import 'package:flutter/material.dart';
import 'package:moni_app/Models/cluster_details_model.dart';
import 'package:moni_app/Styles/color.dart';
import 'package:moni_app/Styles/dimens.dart';

class CusterDetailsPage extends StatefulWidget {
  const CusterDetailsPage({Key? key}) : super(key: key);

  @override
  State<CusterDetailsPage> createState() => _CusterDetailsPageState();
}

class _CusterDetailsPageState extends State<CusterDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ...List.generate(getClusterDetails.length, (index) {
          final data = getClusterDetails[index];

          return Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(data.image!),
                    Text(
                      '   Cluster purse setting',
                      style: TextStyle(
                          fontSize: AppSize.mediumText,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    'Use the link or code below to invite new member\n',
                    style: TextStyle(fontSize: AppSize.mediumText),
                  ),
                  subtitle: Text(
                    "Monthly upfront ",
                    style: TextStyle(
                        fontSize: AppSize.average, fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    'Frequency of contribution\n',
                    style: TextStyle(fontSize: AppSize.mediumText),
                  ),
                  subtitle: Text(
                    "Monthly upfront ",
                    style: TextStyle(
                        fontSize: AppSize.average, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    "Change",
                    style: TextStyle(
                        fontSize: AppSize.listTitle, color: AppColor.pink),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '₦550,000,000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: AppSize.mediumText,
                            color: AppColor.black),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Your contribution is 8% of your eligible amount ',
                        style: TextStyle(
                            fontSize: AppSize.mediumText, color: AppColor.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider()
              ],
            ),
          );
        })
      ],
    );
  }
}
