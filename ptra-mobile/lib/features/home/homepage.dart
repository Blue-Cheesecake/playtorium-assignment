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
      body: ref.watch(homepageStateProvider).when(
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        data: (data) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 2 / 2.75,
                    ),
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return ProductWD(product: data[index]);
                    },
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Discount Options',
                    style: TextStyle(fontSize: 22),
                  ),
                  const SizedBox(height: 15),
                  const FixedAmountCampaignCardWD(),
                  const SizedBox(height: 15),
                  const PercentageDiscountCampaignCardWD(),
                  const SizedBox(height: 15),
                  const PercentageDiscountByCatCardWD(),
                  const SizedBox(height: 15),
                  const DiscountByPointsCampaignCardWD(),
                  const SizedBox(height: 15),
                  const SpecialCampaignCardWD(),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          );
        },
        error: () {
          return const Center(
            child: Text('An error is occured'),
          );
        },
      ),
    );
  }
}
