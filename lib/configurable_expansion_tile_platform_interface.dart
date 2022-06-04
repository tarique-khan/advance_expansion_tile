import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'configurable_expansion_tile_method_channel.dart';

abstract class ConfigurableExpansionTilePlatform extends PlatformInterface {
  /// Constructs a ConfigurableExpansionTilePlatform.
  ConfigurableExpansionTilePlatform() : super(token: _token);

  static final Object _token = Object();

  static ConfigurableExpansionTilePlatform _instance = MethodChannelConfigurableExpansionTile();

  /// The default instance of [ConfigurableExpansionTilePlatform] to use.
  ///
  /// Defaults to [MethodChannelConfigurableExpansionTile].
  static ConfigurableExpansionTilePlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ConfigurableExpansionTilePlatform] when
  /// they register themselves.
  static set instance(ConfigurableExpansionTilePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
