import 'package:flutter_test/flutter_test.dart';
import 'package:suggest_money/suggest_money.dart';
import 'package:suggest_money/suggest_money_platform_interface.dart';
import 'package:suggest_money/suggest_money_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSuggestMoneyPlatform
    with MockPlatformInterfaceMixin
    implements SuggestMoneyPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SuggestMoneyPlatform initialPlatform = SuggestMoneyPlatform.instance;

  test('$MethodChannelSuggestMoney is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSuggestMoney>());
  });

  test('getPlatformVersion', () async {
    SuggestMoney suggestMoneyPlugin = SuggestMoney();
    MockSuggestMoneyPlatform fakePlatform = MockSuggestMoneyPlatform();
    SuggestMoneyPlatform.instance = fakePlatform;

    expect(await suggestMoneyPlugin.getPlatformVersion(), '42');
  });
}
