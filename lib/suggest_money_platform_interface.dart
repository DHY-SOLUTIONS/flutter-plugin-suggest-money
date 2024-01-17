import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'suggest_money_method_channel.dart';

abstract class SuggestMoneyPlatform extends PlatformInterface {
  /// Constructs a SuggestMoneyPlatform.
  SuggestMoneyPlatform() : super(token: _token);

  static final Object _token = Object();

  static SuggestMoneyPlatform _instance = MethodChannelSuggestMoney();

  /// The default instance of [SuggestMoneyPlatform] to use.
  ///
  /// Defaults to [MethodChannelSuggestMoney].
  static SuggestMoneyPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SuggestMoneyPlatform] when
  /// they register themselves.
  static set instance(SuggestMoneyPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
