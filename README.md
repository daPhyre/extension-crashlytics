#extension-Crashlytics

OpenFL extension to use Crashlytics on Android and iOS.

##Instalation

Clone this repo, then use the command below:

```
haxelib dev extension-crashlytics path/to/clone
```

Then build the extension for iOS:

```
lime rebuild extension-crashlytics ios
```

Because Crashlytics requires iOS minimum version of 6.0, you might need to modify `iphoneos-toolchain.xml` and `iphonesim-toolchain.xml` located at `{haxelib-root}/hxcpp/{version}/toolchain`. Locate the flag with the value `-miphoneos-version-min=5.0` and update:

`<flag value="-miphoneos-version-min=6.0" />`

##Use

Include the library in your Project.xml using the haxelib tag:

```
<haxelib name="extension-crashlytics" />
```

In your Main.hx, before starting your app cicle, add this line:

```
Crashlytics.init();
```

###iOS

Add these lines in your PROJ-Info.plist template, before the final closing `</dict>`:

```
    <key>Fabric</key>
    <dict>
        <key>APIKey</key>
        <string>::ENV_FABRIC_API_KEY::</string>
        <key>Kits</key>
        <array>
            <dict>
                <key>KitInfo</key>
                <dict/>
                <key>KitName</key>
                <string>Crashlytics</string>
            </dict>
        </array>
    </dict>
```

If you don't have an PROJ-Info.plist yet, you can find the default template here:

https://github.com/openfl/lime/blob/master/templates/iphone/PROJ/PROJ-Info.plist

To use it, save it at `templates/iphone/PROJ/PROJ-Info.plist`, and add this line in your project.xml:

```
<template path="templates" />
```

To activate Crashlytics for the first time on your app, build your project for iOS, and open your .xcodeproj file on Xcode, located at `export/ios/`. There, add this Run Script to your Build Phases and build:

```
{extension-path}/extension-crashlitycs/dependencies/ios/Fabric.framework YOUR_API_KEY YOUR_BUILD_SECRET
```

If you downloaded this project trough the library package manager, `{extension-path}` will be likely `/usr/local/lib/haxelib/` on Mac, and `C:\\HaxeToolkit\\haxe\\lib\\` on Windows.

You can find your API KEY and BUILD SECRET at https://www.fabric.io/settings/organizations, there you select your organization, and below your organization name will be the buttons to reveal them. If you don't have any previous applications in your Fabric, these values won't be revealed yet. The easiest way to retrieve them, is to install the [Fabric Xcode plugin](https://www.fabric.io/downloads/xcode) and follow the steps.

After the first build with your Run Script, you can run your project through the Lime command or Xcode at your preference from now on.
