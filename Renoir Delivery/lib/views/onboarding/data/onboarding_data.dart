import '../../../core/constants/app_images.dart';
import 'onboarding_model.dart';

class OnboardingData {
  static List<OnboardingModel> items = [
    OnboardingModel(
      imageUrl: AppImages.onboarding1,
      headline: 'Discover Rwandan Delights',  
      description:
          'Explore the diverse categories of local products, from fresh produce to artisan goods, all sourced within Rwanda.',  // Local description
    ),
    OnboardingModel(
      imageUrl: AppImages.onboarding2,
      headline: 'Exclusive Rwandan Deals & Offers',  
      description:
          'Enjoy amazing discounts on locally produced items and exclusive offers from Rwandan businesses.',  // Local description
    ),
    OnboardingModel(
      imageUrl: AppImages.onboarding3,
      headline: 'Fast Delivery Across Rwanda',  
      description:
          'Get your products delivered to your door within 30 minutes, no matter where you are in Rwanda.',  // Local description
    ),
  ];
}
