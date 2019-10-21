#import "EcooneUiWebviewPlugin.h"
#import <ecoone_ui_webview/ecoone_ui_webview-Swift.h>

@implementation EcooneUiWebviewPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEcooneUiWebviewPlugin registerWithRegistrar:registrar];
}
@end
