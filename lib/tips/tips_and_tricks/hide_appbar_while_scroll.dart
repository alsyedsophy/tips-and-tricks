import 'package:flutter/material.dart';

class HideAppbarWhileScroll extends StatelessWidget {
  const HideAppbarWhileScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Test App Bar Hide'),
            centerTitle: true,
            backgroundColor: Colors.amber,
          ),
          SliverToBoxAdapter(
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) => Container(
                height: 40,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                color: Colors.red,
              ),
              separatorBuilder: (_, _) => SizedBox(height: 10),
              itemCount: 20,
            ),
          ),
        ],
      ),

      //? ولكن هذه الطريقه هى الافضل
      // body: NestedScrollView(
      //   headerSliverBuilder: (context, innerBoxIsScrolled) => [
      //     SliverAppBar(
      //       title: Text('Test App Bar Hide'),
      //       centerTitle: true,
      //       backgroundColor: Colors.amber,
      //     ),
      //   ],
      //   body: ListView.separated(
      //     itemBuilder: (_, index) => Container(
      //       height: 40,
      //       width: double.infinity,
      //       padding: EdgeInsets.all(16),
      //       color: Colors.red,
      //     ),
      //     separatorBuilder: (_, _) => SizedBox(height: 10),
      //     itemCount: 20,
      //   ),
      // ),
    );
  }
}
