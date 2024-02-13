import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic/logic.dart';
import 'widgets/widgets.dart';

class Homepage extends ConsumerStatefulWidget {
  const Homepage({super.key});

  @override
  ConsumerState<Homepage> createState() => _HomepageState();
}

class _HomepageState extends ConsumerState<Homepage> {
  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      ref.read(homepageStateProvider.notifier).fetchProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
        centerTitle: false,
        actions: const [
          CartBadgeWD(),
          SizedBox(width: 20),
        ],
      ),
      body: SafeArea(
        child: ref.watch(homepageStateProvider).when(
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          data: (data) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 2 / 2.75,
              ),
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ProductWD(product: data[index]);
              },
            );
          },
          error: () {
            return const Center(
              child: Text('An error is occured'),
            );
          },
        ),
      ),
    );
  }
}
