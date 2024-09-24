import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridView extends StatelessWidget {
  const StaggeredGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Staggered Grid View"),
      ),
      body: SingleChildScrollView(
          child: StaggeredGrid.count(
        axisDirection: AxisDirection.down,
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: List.generate(
            10,
            (index) => StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Container(
                    color: Colors.blue,
                    child: Text(
                      index.toString(),
                      style: const TextStyle(color: Colors.yellow),
                    )))),
      )),
    );
  }
}
