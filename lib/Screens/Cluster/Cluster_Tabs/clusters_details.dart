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
                      '   ${data.header}',
                      style: TextStyle(
                          fontSize: AppSize.mediumText,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                if (data.title1 != '')
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      '${data.title1}\n',
                      style: TextStyle(fontSize: AppSize.mediumText),
                    ),
                    subtitle: Text(
                      data.title2!,
                      style: TextStyle(
                          fontSize: AppSize.average,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                if (data.title3 != '')
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      '${data.title3}\n',
                      style: TextStyle(fontSize: AppSize.mediumText),
                    ),
                    subtitle: Text(
                      data.title4!,
                      style: TextStyle(
                          fontSize: AppSize.average,
                          color: index == 4 ? AppColor.green : AppColor.black,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      data.leadingText!,
                      style: TextStyle(
                          fontSize: AppSize.listTitle,
                          fontWeight: FontWeight.bold,
                          color: index == 5 ? AppColor.green : AppColor.pink),
                    ),
                  ),
                if (data.title6 != '')
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.title5!,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppSize.mediumText,
                              color: AppColor.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        data.icon == null
                            ? Text(
                                data.title6!,
                                style: TextStyle(
                                    fontSize: AppSize.mediumText,
                                    color: AppColor.grey),
                              )
                            : Row(
                                children: [
                                  Icon(
                                    data.icon,
                                    size: 16,
                                    color: AppColor.pink,
                                  ),
                                  Text(
                                    "  ${data.title6}",
                                    style: TextStyle(
                                        fontSize: AppSize.mediumText,
                                        color: AppColor.pink),
                                  ),
                                ],
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
