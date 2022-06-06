import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'advance_expansion_tile_method_channel.dart';

abstract class AdvanceExpansionTilePlatform extends PlatformInterface {
  /// Constructs a AdvanceExpansionTilePlatform.
  AdvanceExpansionTilePlatform() : super(token: _token);

  static final Object _token = Object();

  static AdvanceExpansionTilePlatform _instance = MethodChannelAdvanceExpansionTile();

  /// The default instance of [AdvanceExpansionTilePlatform] to use.
  ///
  /// Defaults to [MethodChannelAdvanceExpansionTile].
  static AdvanceExpansionTilePlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AdvanceExpansionTilePlatform] when
  /// they register themselves.
  static set instance(AdvanceExpansionTilePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
