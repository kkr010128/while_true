import '../models/banner_model.dart';

class HomeViewModel {
  BannerModel getBannerData() {
    return BannerModel(
      title: "열정 하나로 성취하는 \n가장 확실한 방법",
      buttonText: "지원하기",
    );
  }
}
