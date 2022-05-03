import 'package:flutter/material.dart';
import 'package:moni_app/Models/member_model.dart';
import 'package:moni_app/Screens/Cluster/Cluster_Tabs/Local_widget/members_list_container.dart';
import 'package:moni_app/Styles/color.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({Key? key, this.data}) : super(key: key);

  final Data? data;

  @override
  State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  @override
  Widget build(BuildContext context) {
    final agentList = widget.data!;
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ///Overdue loans agent
        if (agentList.overdueAgents!.isNotEmpty)
          MembersListContainer(
              title: 'Overdue Loans',
              agentsList: agentList.overdueAgents,
              loanType: 'Late loan',
              color: AppColor.red),

        ///Due Today agents

        if (agentList.dueAgents!.isNotEmpty)
          MembersListContainer(
            title: 'Due Today',
            agentsList: agentList.dueAgents,
            loanType: 'Late loan',
            color: AppColor.darkAmber,
          ),

        ///Active Loan agents
        if (agentList.activeAgents!.isNotEmpty)
          MembersListContainer(
            title: 'Active Loans',
            loanType: 'Active loan',
            agentsList: agentList.activeAgents,
            color: AppColor.green,
          ),

        ///Inactive Loan agents
        if (agentList.inactiveAgents!.isNotEmpty)
          MembersListContainer(
            title: 'Inactive Loans',
            loanType: 'No Active loan',
            agentsList: agentList.inactiveAgents,
            color: AppColor.black,
          ),
      ],
    );
  }
}
