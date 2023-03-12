import 'package:get/get.dart';

class HomeController extends GetxController {
  final counter = 1.obs;
  RxDouble opacity = 0.2.obs;
  RxBool switchValue = false.obs;
  RxList favorite = [].obs;
  RxList<String> ImagesList = [
    'https://i.ytimg.com/vi/pxoDNg-SZu8/maxresdefault.jpg',
    'https://imgix.ranker.com/list_img_v2/1377/2681377/original/best-sasuke-uchiha-quotes?w=817&h=427&fm=jpg&q=50&fit=crop',
    'https://www.sosyncd.com/wp-content/uploads/2022/06/116.png',
    'https://blacknerdproblems.com/wp-content/uploads/2015/08/Sakura-1.jpg',
    'https://qph.cf2.quoracdn.net/main-qimg-f2d6505570af1b9abdc0ec68458670df-pjlq',
    'https://static.wikia.nocookie.net/naruto-bleach-and-sonic/images/7/79/Hinata_Part_II.png/revision/latest?cb=20140824004533',
    'https://staticg.sportskeeda.com/editor/2022/07/a3300-16582302931133.png',
    'https://staticg.sportskeeda.com/editor/2022/05/e95df-16540155209606-1920.jpg',
    'https://static.wikia.nocookie.net/naruto/images/2/21/Profile_Jiraiya.PNG/revision/latest?cb=20160115173538'
  ].obs;

  void switchvalue(bool value) {
    switchValue.value = value;
  }

  void opacitySlider(double value) {
    opacity.value = value;
  }

  void increment() {
    counter.value++;
  }

  void addToFav(String img) {
    favorite.add(img);
  }

  void removeFromFav(String img) {
    favorite.remove(img);
  }

  void decrement() {
    counter.value--;
  }
}
