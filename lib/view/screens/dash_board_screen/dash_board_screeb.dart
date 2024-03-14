import 'package:flutter/material.dart';

import '../../widgets/nav_bar/nav_bar.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(currentIndex: 0),
    );
  }
}
