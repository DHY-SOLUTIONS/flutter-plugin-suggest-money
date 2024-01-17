import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'suggest_money_platform_interface.dart';

/// An implementation of [SuggestMoneyPlatform] that uses method channels.
class MethodChannelSuggestMoney extends SuggestMoneyPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('suggest_money');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
