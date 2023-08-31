import 'package:flutter/material.dart';
import '../../../colors/color.dart';

class MenuAppbar extends StatelessWidget {
  const MenuAppbar({
    super.key,
    required this.tabcontroller,
  });

  final TabController tabcontroller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
            Text('Our Menu',style: TextStyle(fontSize: 20,color: menupage[2]),),
            IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart))
          ],
          
        ),
        const SizedBox(
          height: 30,
        ),
        TabBar(
          
          controller: tabcontroller,
          indicatorColor: menupage[4],
          indicatorWeight: 3,
          unselectedLabelColor: menupage[2],
          labelColor: menupage[4],
          labelStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
          tabs: const [
            
            Tab(
              text: 'Meals'
            ),
              Tab(
              text: 'Sides',
            ),
              Tab(
              text: 'Snacks',
            ),
        ])
      ],
    );
  }
}
