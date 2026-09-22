import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonizerPackage extends StatelessWidget {
  const SkeletonizerPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Skeletonizer(
              enabled: true,
              ignoreContainers: true,
              // ignorePointers: true,
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text('Item number $index as title'),
                        subtitle: const Text('Subtitle here'),
                        trailing: const Icon(Icons.ac_unit),
                      ),
                    );
                  },
                ),
              ),
            ),
            Skeletonizer(
              enabled: true,
              child: Skeleton.leaf(
                // enabled: true,
                child: Card(
                  child: ListTile(
                    title: Text('The title goes here'),
                    subtitle: Text('Subtitle here'),
                    trailing: Icon(Icons.ac_unit, size: 40),
                  ),
                ),
              ),
            ),
            Skeletonizer(
              child: Card(
                child: ListTile(
                  title: Text('The title goes here'),
                  subtitle: Text('Subtitle here'),
                  trailing: Skeleton.ignore(
                    // the icon will not be skeletonized
                    child: Icon(Icons.ac_unit, size: 40),
                  ),
                ),
              ),
            ),

            Skeletonizer(
              child: Card(
                child: ListTile(
                  title: Text('The title goes here'),
                  subtitle: Text('Subtitle here'),
                  trailing: Skeleton.shade(
                    child: Icon(Icons.ac_unit, size: 40),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
