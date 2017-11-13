#!/bin/bash
(cd project && haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_ARM   -DHXCPP_CLANG -DOBJC_ARC)
(cd project && haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_ARMV7 -DHXCPP_CLANG -DOBJC_ARC)
(cd project && haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_ARM64 -DHXCPP_CLANG -DOBJC_ARC)
