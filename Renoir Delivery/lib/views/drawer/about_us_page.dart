import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/constants/app_defaults.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Us',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: AppDefaults.padding),
            const Text(
                '''Renoir Delivery is committed to providing top-quality delivery services across Rwanda, with a focus on supporting local businesses and enhancing the customer experience. Our mission is to help our community thrive by ensuring that every delivery is fast, reliable, and affordable.

At Renoir Delivery, we are inspired by Rwanda's growth and innovation, and we are proud to contribute to the country's digital transformation by offering easy-to-use technology that helps customers access products and services from the comfort of their homes. We are dedicated to creating jobs and providing opportunities for Rwandans in all regions, supporting sustainable growth for the economy.

Our vision aligns with Rwanda’s long-term development goals, particularly its commitment to innovation, sustainability, and community. As Rwanda continues to grow as a regional hub for technology, Renoir Delivery strives to be part of this transformation, helping to shape a connected, inclusive, and prosperous future for all.

We believe that by providing reliable delivery services, we can help both local businesses and consumers thrive. Whether you're shopping for groceries, office supplies, or health products, Renoir Delivery is here to make sure you get what you need with ease, speed, and safety.

Thank you for choosing Renoir Delivery, and we look forward to serving you!''')
          ],
        ),
      ),
    );
  }
}
