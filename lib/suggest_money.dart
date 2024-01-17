
import 'suggest_money_platform_interface.dart';

class SuggestMoney {
  Future<String?> getPlatformVersion() {
    return SuggestMoneyPlatform.instance.getPlatformVersion();
  }
}
