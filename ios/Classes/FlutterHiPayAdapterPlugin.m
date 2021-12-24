#import "FlutterHiPayAdapterPlugin.h"
#if __has_include(<flutter_hi_pay_adapter/flutter_hi_pay_adapter-Swift.h>)
#import <flutter_hi_pay_adapter/flutter_hi_pay_adapter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_hi_pay_adapter-Swift.h"
#endif

@implementation FlutterHiPayAdapterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterHiPayAdapterPlugin registerWithRegistrar:registrar];
}
@end
