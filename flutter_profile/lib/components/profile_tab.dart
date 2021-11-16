import 'package:flutter/material.dart';

// stateful 상태가 있는 위젯 => 상태에 따라 위젯이 변경된다.
class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_buildTabBar(), _buildTabBarView()],
    );
  }

  Widget _buildTabBar() {
    return SizedBox();
  }

  Widget _buildTabBarView() {
    return SizedBox();
  }
}
