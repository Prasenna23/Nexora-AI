import 'package:flutter/material.dart';
import 'package:nexora_ai/core/constants/colors.dart';
import 'package:nexora_ai/core/widgets/app_logo.dart';
import 'package:nexora_ai/core/widgets/primary_button.dart';
import 'package:nexora_ai/core/widgets/section_title.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();

  int currentPage = 0;

  final List<Map<String, String>> pages = [
    {
      "title": "Welcome to Nexora AI",
      "subtitle":
          "Your intelligent AI workforce built to simplify business operations."
    },
    {
      "title": "Meet Your AI Workforce",
      "subtitle":
          "HR, Finance, Sales, Marketing and Document Agents working together."
    },
    {
      "title": "Run Your Business Smarter",
      "subtitle":
          "Create your workspace and let AI help you manage daily operations."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 20),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Skip"),
                ),
              ),

              Expanded(
                child: PageView.builder(
                  controller: controller,
                  itemCount: pages.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const AppLogo(),

                        const SizedBox(height: 50),

                        SectionTitle(
                          title: pages[index]["title"]!,
                          subtitle: pages[index]["subtitle"]!,
                        ),
                      ],
                    );
                  },
                ),
              ),

              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: AppColors.primary,
                  dotColor: Colors.grey.shade700,
                ),
              ),

              const SizedBox(height: 40),

              PrimaryButton(
                text: currentPage == 2 ? "Get Started" : "Next",
                onPressed: () {
                  if (currentPage < 2) {
                    controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    // Login screen (next milestone)
                  }
                },
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}