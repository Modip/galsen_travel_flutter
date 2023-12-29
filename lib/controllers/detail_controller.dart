import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DetailController extends GetxController {
  var fav = 0;

  void favCounter() {
    if (fav == 1) {
      Get.snackbar("Favorie", "Vous l'avez déja ajouter au favorie");
    } else {
      fav++;
      Get.snackbar("Favorie","Bien ajouter ");
    }
  }
}
