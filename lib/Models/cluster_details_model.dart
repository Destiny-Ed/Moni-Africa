class ClusterDetailsModel {
  final String? image;
  final String? header;
  final String? title1;
  final String? title2;
  final String? title3;
  final String? title4;
  final String? title5;
  final String? title6;
  final String? leadingText;

  ClusterDetailsModel(
      {this.image,
      this.header,
      this.title1,
      this.title2,
      this.title3,
      this.title4,
      this.title5,
      this.title6,
      this.leadingText});
}

List<ClusterDetailsModel> getClusterDetails = [
  ClusterDetailsModel(
      image: 'assets/dollar_cluster.png',
      header: 'Cluster purse setting',
      title1: '',
      title2: '',
      title3: 'Frequency of contribution',
      title4: 'Monthly upfront',
      title5: '₦550,000,000',
      title6: 'Your contribution is 8% of your eligible amount ',
      leadingText: 'Change'),
  ClusterDetailsModel(
      image: 'assets/link.png',
      header: 'Group invite Link/Code',
      title1: 'Use the link or code below to invite new member',
      title2: '',
      title3: 'Member invite code',
      title4: '30DF38TG000',
      title5: '',
      title6: '',
      leadingText: 'Get new code'),
  ClusterDetailsModel(
      image: 'assets/group_cluster.png',
      header: 'Loan setting',
      title1: 'Total loan collected by cluster',
      title2: '₦550,000,000',
      title3: 'Repayment Day',
      title4: 'Every Monday',
      title5: '',
      title6: '',
      leadingText: 'Change'),
  ClusterDetailsModel(
      image: 'assets/group_cluster.png',
      header: 'Pending Join Request',
      title1: 'No pending cluster join request',
      title2: '',
      title3: '',
      title4: '',
      title5: '',
      title6: '',
      leadingText: ''),
];
