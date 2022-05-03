import 'package:flutter/material.dart';
import 'package:moni_app/Screens/Cluster/Cluster_Tabs/Local_widget/members_list_container.dart';
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
          return const MembersListContainer();
        }),
      ],
    );
  }
}
