import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import 'components/faq_item.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Terms and Conditions'),
      ),
      body: const Column(
        children: [
          TitleAndParagraph(
            isTitleHeadline: false,
            title: 'General site usage - Last revised: November 12, 2024',
            paragraph: '''Welcome to our website! By using this platform, you agree to our terms and conditions. 
                          Our website is intended to provide a seamless shopping experience for customers in Rwanda. 
                          Please read these terms carefully to understand how we operate and your responsibilities as a user.''',
          ),
          TitleAndParagraph(
            isTitleHeadline: false,
            title: '1. Agreement',
            paragraph: '''By accessing and using this website, you agree to comply with all terms and conditions stated in this document. 
                          This agreement is binding upon you when you use any of our services, including placing orders, viewing products, or interacting with customer support. 
                          We reserve the right to modify these terms at any time.''',
          ),
          TitleAndParagraph(
            isTitleHeadline: false,
            title: '2. Account',
            paragraph: '''To make purchases, you must create an account with us. You agree to provide accurate and complete information during the registration process, 
                          and to keep your account secure. You are responsible for all activities under your account. If you suspect unauthorized activity, 
                          please contact our support team immediately. 
                          Your account is personal and non-transferable.''',
          ),
          TitleAndParagraph(
            isTitleHeadline: false,
            title: '3. Relationship with the Delivery Service',
            paragraph: '''We collaborate with local delivery partners to ensure timely delivery of your orders across Rwanda. 
                          Once your order is dispatched, we will provide tracking information. You are responsible for providing accurate shipping details to avoid delivery delays. 
                          We are not responsible for delays or issues caused by third-party delivery services.''',
          ),
        ],
      ),
    );
  }
}
