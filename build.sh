#!/bin/bash
if [ -d "ndll" ]; then
    rm -r ndll
fi
if [ -d "obj" ]; then
    rm -r obj
fi

(cd native && haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_ARM   -DHXCPP_CLANG -DOBJC_ARC $1)
(cd native && haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_ARMV7 -DHXCPP_CLANG -DOBJC_ARC $1)
(cd native && haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_ARM64 -DHXCPP_CLANG -DOBJC_ARC $1)
(cd native && haxelib run hxcpp Build.xml -Diphonesim -DHXCPP_CPP11 -DHXCPP_CLANG -DOBJC_ARC $1)
(cd native && haxelib run hxcpp Build.xml -Diphonesim -DHXCPP_CPP11 -DHXCPP_M64 -DHXCPP_CLANG -DOBJC_ARC $1)
