#import "AppVersion.h"

@implementation AppVersion
RCT_EXPORT_MODULE()

RCT_REMAP_METHOD(getAppVersion,
                 appVersionResolver:(RCTPromiseResolveBlock)resolve
                 appVersionRejecter:(RCTPromiseRejectBlock)reject)
{
    NSString *version = [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleShortVersionString"];
    resolve(version);
}

RCT_REMAP_METHOD(getBuildNumber,
                 buildNumberResolver:(RCTPromiseResolveBlock)resolve
                 buildNumberRejecter:(RCTPromiseRejectBlock)reject)
{
    NSString *buildNumber = [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleVersion"];
    resolve(buildNumber);
}



@end
