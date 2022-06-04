#import "ConfigurableExpansionTilePlugin.h"
#if __has_include(<configurable_expansion_tile/configurable_expansion_tile-Swift.h>)
#import <configurable_expansion_tile/configurable_expansion_tile-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "configurable_expansion_tile-Swift.h"
#endif

@implementation ConfigurableExpansionTilePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftConfigurableExpansionTilePlugin registerWithRegistrar:registrar];
}
@end
