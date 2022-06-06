#import "AdvanceExpansionTilePlugin.h"
#if __has_include(<advance_expansion_tile/advance_expansion_tile-Swift.h>)
#import <advance_expansion_tile/advance_expansion_tile-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "advance_expansion_tile-Swift.h"
#endif

@implementation AdvanceExpansionTilePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAdvanceExpansionTilePlugin registerWithRegistrar:registrar];
}
@end
