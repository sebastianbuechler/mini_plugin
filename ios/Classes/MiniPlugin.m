#import "MiniPlugin.h"
#if __has_include(<mini_plugin/mini_plugin-Swift.h>)
#import <mini_plugin/mini_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mini_plugin-Swift.h"
#endif

@implementation MiniPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMiniPlugin registerWithRegistrar:registrar];
}
@end
