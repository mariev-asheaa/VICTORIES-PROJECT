import 'package:flutter/cupertino.dart';
import 'package:hykaity/features/Onboarding/models/PageViewItem_Model.dart';
import 'package:hykaity/features/Onboarding/presentation/widgets/Onboarding_PageView_Item.dart';
import 'package:hykaity/generated/assets.dart';

class OnboardingPageview extends StatelessWidget {
  const OnboardingPageview({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        //first page view
        OnboardingPageviewItem(
          pageViewModel: PageViewModel(
              backGroundImage: Assets.imagesOnboardingimage1,
            subTitle: 'إجعل طفلك أكثر طموح وإبتكاراً',
            title: 'إصنع قصصاً مخصصة لطفلك...',
          ),
        ),

        //Second page view
        OnboardingPageviewItem(
          pageViewModel: PageViewModel(
              backGroundImage: Assets.imagesOnboardingimage2,
              subTitle: 'قم بتحفيزة وتشجعيه ليصل إلى لهدفة',
              title:'إجعل طفلك يبدء رحلتة بمفرده'
          ),
        ),

          //third page view
        OnboardingPageviewItem(
          pageViewModel: PageViewModel(
              backGroundImage: Assets.imagesOnboardingimage3,
              subTitle: 'إستمرار - قوة - عزيمه - إرادة تصل مبكراً',
              title:'إستمر تصل لهدفك'
          ),
        ),
      ],
    );
  }
}
