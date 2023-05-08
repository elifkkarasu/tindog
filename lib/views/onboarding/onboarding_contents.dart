class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Köpeklerle tanışın",
    image: "assets/images/img1.png",
    desc: " Sitemizdeki yüzlerce köpekle profillerine bakarak tanışın.",
  ),
  OnboardingContents(
    title: "Onları tanıyın",
    image: "assets/images/img2.png",
    desc:
        " Sitemizdeki köpeklerle tanışın ve  anlaşacağınız köpeği bulmaya çalışın.",
  ),
  OnboardingContents(
    title: "Sahiplenin",
    image: "assets/images/img3.png",
    desc: "Yeni yavrunuzu sahiplenin ve birlikte mutluca yaşayın!.",
  ),
];
