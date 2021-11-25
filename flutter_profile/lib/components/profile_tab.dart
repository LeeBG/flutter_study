import 'package:flutter/material.dart';

// stateful 상태가 있는 위젯 => 상태에 따라 위젯이 변경된다.
class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  //상태가 있는 위젯
  TabController? _tabController; // _를 적으면 private로 취급을 해줌

  /// ProfileTab 그림이 그려질 때 단 한번만 실행되는 함수
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: [
        Tab(icon: Icon(Icons.directions_car)),
        Tab(icon: Icon(Icons.directions_transit)),
      ],
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            // 여기서 index는 순서 (itemCount가 20이니까 0부터19까지)
            //익명함수
            return Image.network(
              "https://picsum.photos/id/${index + 1}/200/200",
              scale: 0.3, //scale을 좀 떨어뜨리면 화질이 떨어지지만 부하가 덜하다
            );
          },
        ),
        Container(color: Colors.red),
      ],
    );
  }
}
