import 'package:flutter/material.dart';
import 'package:moni_app/Models/member_model.dart';
import 'package:moni_app/Providers/get_members_details_provider.dart';
import 'package:moni_app/Screens/Cluster/Cluster_Tabs/clusters_details.dart';
import 'package:moni_app/Screens/Cluster/Cluster_Tabs/members_page.dart';
import 'package:moni_app/Styles/color.dart';
import 'package:moni_app/Styles/dimens.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ClusterMainPage extends StatefulWidget {
  const ClusterMainPage({Key? key}) : super(key: key);

  @override
  State<ClusterMainPage> createState() => _ClusterMainPageState();
}

class _ClusterMainPageState extends State<ClusterMainPage>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this)
      ..addListener(() {
        setState(() {
          tabIndex = controller!.index;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/background.png'),
              ),
            ),
          ),
          title: const Text('My Cluster'),
        ),
        body: FutureBuilder<MemberModel>(
          future: MemberProvider().getMemberDetail(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final result = snapshot.data;

              ///Check if the data is empty
              return NestedScrollView(
                headerSliverBuilder: (context, value) {
                  return [
                    SliverToBoxAdapter(
                      child: SizedBox(
                        child: Column(children: [
                          ///Header Field
                          Container(
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
                                  ///Profile section
                                  SizedBox(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            result!.data!.clusterName!,
                                            style: TextStyle(
                                                fontSize: AppSize.mediumText,
                                                color: AppColor.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              ///Repayment date and day field
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 10),
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                        color: AppColor.darkBg,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: Text.rich(
                                                      TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "Repayment rate: ",
                                                            style: TextStyle(
                                                              color:
                                                                  AppColor.grey,
                                                              fontSize: AppSize
                                                                  .mediumText,
                                                            )),
                                                        TextSpan(
                                                            text: result.data!
                                                                .clusterRepaymentRate
                                                                .toString(),
                                                            style: TextStyle(
                                                              color: AppColor
                                                                  .darkAmber,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: AppSize
                                                                  .mediumText,
                                                            ))
                                                      ]),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            bottom: 10),
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                        color: AppColor.darkBg,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: Text.rich(
                                                      TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "Repayment Day: ",
                                                            style: TextStyle(
                                                              color:
                                                                  AppColor.grey,
                                                              fontSize: AppSize
                                                                  .mediumText,
                                                            )),
                                                        TextSpan(
                                                            text: result.data!
                                                                .clusterRepaymentDay,
                                                            style: TextStyle(
                                                              color: AppColor
                                                                  .green,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: AppSize
                                                                  .mediumText,
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
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    image: const DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: AssetImage(
                                                            "assets/avatar.png"))),
                                              )
                                            ],
                                          ),
                                        ]),
                                  ),
                                  Divider(
                                    color: AppColor.dividerColor,
                                    thickness: 1,
                                  ),

                                  ///cluster purse balance section
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cluster purse balance',
                                            style: TextStyle(
                                                fontSize: AppSize.smallestText,
                                                color: AppColor.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              ///Repayment date and day field
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "₦${result.data!.clusterPurseBalance}",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: AppColor.white,
                                                      fontSize: AppSize.average,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "+₦550,000,000 interest today",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: AppColor.green,
                                                        fontSize: AppSize
                                                            .smallestText),
                                                  ),
                                                ],
                                              ),

                                              ///View Purse field
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10,
                                                        horizontal: 20),
                                                child: Text(
                                                  'View Purse',
                                                  style: TextStyle(
                                                      color: AppColor.white),
                                                ),
                                                decoration: BoxDecoration(
                                                    color: AppColor.lightRed,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              )
                                            ],
                                          ),
                                        ]),
                                  ),
                                  Divider(
                                    color: AppColor.dividerColor,
                                    thickness: 1,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ///Repayment date and day field
                                        Text(
                                          "Total interest earned",
                                          style: TextStyle(
                                            color: AppColor.grey,
                                            fontSize: AppSize.average,
                                          ),
                                        ),

                                        Text(
                                          "₦${result.data!.totalInterestEarned}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.lightAmber,
                                            fontSize: AppSize.smallText,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: AppColor.dividerColor,
                                    thickness: 1,
                                  ),

                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ///Repayment date and day field
                                        Text(
                                          "Total owed by members",
                                          style: TextStyle(
                                            color: AppColor.grey,
                                            fontSize: AppSize.average,
                                          ),
                                        ),

                                        Text(
                                          "₦${result.data!.totalOwedByMembers}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.white,
                                            fontSize: AppSize.smallText,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  ///Tab Bar
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),

                    ///Tab Bar
                    SliverPinnedHeader(
                      child: Container(
                        height: 50,
                        color: AppColor.tabColor,
                        child: TabBar(
                          controller: controller,
                          indicatorColor: AppColor.lightRed,
                          tabs: [
                            Text(
                              "Members (${result.data!.overdueAgents!.length + result.data!.dueAgents!.length + result.data!.activeAgents!.length + result.data!.inactiveAgents!.length})",
                              style: TextStyle(
                                color: tabIndex == 0
                                    ? AppColor.lightRed
                                    : AppColor.black,
                                fontSize: AppSize.mediumText,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Cluster Details",
                              style: TextStyle(
                                color: tabIndex == 1
                                    ? AppColor.lightRed
                                    : AppColor.black,
                                fontSize: AppSize.mediumText,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  controller: controller,
                  children: [
                    MembersPage(
                      data: result!.data!,
                    ),
                    const CusterDetailsPage()
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {});
                      },
                      child: Image.asset('assets/internet.png')));
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
