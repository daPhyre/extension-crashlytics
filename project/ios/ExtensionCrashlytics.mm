#import <ExtensionCrashlytics.h>

#import <Fabric/Fabric.h>
#import <Crashlytics/Crashlytics.h>
#import <UIKit/UIKit.h>

namespace extension_crashlytics {

    void init() {
        [Fabric with:@[[Crashlytics class]]];
    }

    void log(const char *msg) {
        CLSLog(@"%@", [NSString stringWithUTF8String:msg]);
    }

    void trace(const char *msg) {
        CLSNSLog(@"%@", [NSString stringWithUTF8String:msg]);
    }

    void setBool(const char *key, bool value) {
        [CrashlyticsKit setBoolValue:value forKey:[NSString stringWithUTF8String:key]];
    }

    void setDouble(const char *key, double value) {
        [CrashlyticsKit setFloatValue:value forKey:[NSString stringWithUTF8String:key]];
    }

    void setFloat(const char *key, float value) {
        [CrashlyticsKit setFloatValue:value forKey:[NSString stringWithUTF8String:key]];
    }

    void setInt(const char *key, int value) {
        [CrashlyticsKit setIntValue:value forKey:[NSString stringWithUTF8String:key]];
    }

    void setString(const char *key, const char *value) {
        [CrashlyticsKit setObjectValue:[NSString stringWithUTF8String:value] forKey:[NSString stringWithUTF8String:key]];
    }

    void setUserIdentifier(const char *identifier) {
        [CrashlyticsKit setUserIdentifier:[NSString stringWithUTF8String:identifier]];
    }

    void setUserName(const char *name) {
        [CrashlyticsKit setUserName:[NSString stringWithUTF8String:name]];
    }

    void setUserEmail(const char *email) {
        [CrashlyticsKit setUserEmail:[NSString stringWithUTF8String:email]];
    }

}
