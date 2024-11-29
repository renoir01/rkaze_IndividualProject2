import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import 'components/faq_item.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('FAQ'),
      ),
      body: const Column(
        children: [
          TitleAndParagraph(
            title: '1. How long will it take to deliver?',
            paragraph: '''Delivery times vary depending on your location in Rwanda. 
                          Typically, orders within Kigali are delivered within 1-2 days, 
                          while deliveries to other regions may take up to 3-4 days. 
                          We strive to deliver as quickly as possible and will notify you of any delays.''',
          ),
          TitleAndParagraph(
            title: '2. What is the refund policy?',
            paragraph: '''If you are not satisfied with your purchase, you can request a refund within 7 days of receiving the product. 
                          Refunds are only available for products that are defective or damaged upon arrival. 
                          Please contact our customer support team to initiate the refund process. 
                          Once the return is confirmed, the refund will be processed within 3-5 business days.''',
          ),
          TitleAndParagraph(
            title: '3. How do I track my order?',
            paragraph: '''Once your order is dispatched, you will receive a tracking number via email or SMS. 
                          You can use this tracking number on our website or the delivery partner’s app 
                          to track your order in real-time.''',
          ),
        ],
      ),
    );
  }
}
