class OnboardingModel {
  final String title;
  final String description;
  final String image;

  OnboardingModel({
    required this.title,
    required this.description,
    required this.image,
  });
}


List<OnboardingModel> onboardingList = [

  OnboardingModel(
    title: "Explore Upcoming and Nearby Events",
    description:
        "Discover exciting events happening near you and stay updated.",
    image: 'assets/imgs/onboarding1.png',
  ),

  OnboardingModel(
    title: "We Have Modern Events Calendar Feature",
    description:
        "Easily browse and manage events using our modern and user-friendly calendar interface.",
    image: 'assets/imgs/onboarding2.png',
  ),

  OnboardingModel(
    title: "To Look Up More Events or Activities Nearby By Map",
    description:
        "Find events the map and explore activities happening around you in real time.",
    image: 'assets/imgs/onboarding3.png',
  ),

];