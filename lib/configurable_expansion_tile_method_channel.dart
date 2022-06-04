import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'configurable_expansion_tile_platform_interface.dart';

/// An implementation of [ConfigurableExpansionTilePlatform] that uses method channels.
class MethodChannelConfigurableExpansionTile extends ConfigurableExpansionTilePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('configurable_expansion_tile');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
