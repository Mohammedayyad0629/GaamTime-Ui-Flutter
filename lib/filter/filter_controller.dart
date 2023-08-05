import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FilterController extends GetxController {
  Rx<SfRangeValues> priceRange = const SfRangeValues(0.0, 10000000.0).obs;
}
