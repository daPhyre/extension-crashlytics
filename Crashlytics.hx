package com.minogames.ext;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

#if (android && openfl)
import openfl.utils.JNI;
#end


class Crashlytics {

    public static function init():Void {
        #if (android && openfl)
        if (extension_crashlytics_init_jni == null) {
            extension_crashlytics_init_jni = JNI.createStaticMethod ("org.haxe.extension.ExtensionCrashlytics", "init", "()V");
        }
        extension_crashlytics_init_jni();
        #elseif ios
        extension_crashlytics_init();
        #else
        trace("nothing");
        #end
    }

    public static function log (msg:String):Void {
        #if (android && openfl)
        if (extension_crashlytics_log_jni == null) {
            extension_crashlytics_log_jni = JNI.createStaticMethod ("org.haxe.extension.ExtensionCrashlytics", "log", "(Ljava/lang/String;)V");
        }
        extension_crashlytics_log_jni(msg);
        #elseif ios
        extension_crashlytics_log(msg);
        #end
    }

    public static function trace (msg:String):Void {
        #if (android && openfl)
        if (extension_crashlytics_trace_jni == null) {
            extension_crashlytics_trace_jni = JNI.createStaticMethod ("org.haxe.extension.ExtensionCrashlytics", "trace", "(Ljava/lang/String;)V");
        }
        extension_crashlytics_trace_jni(msg);
        #elseif ios
        extension_crashlytics_trace(msg);
        #else
        haxe.Log.trace(msg);
        #end
    }

    public static function setBool (key:String, value:Bool):Void {
        #if (android && openfl)
        if (extension_crashlytics_set_bool_jni == null) {
            extension_crashlytics_set_bool_jni = JNI.createStaticMethod ("org.haxe.extension.ExtensionCrashlytics", "setBool", "(Ljava/lang/String;Z)V");
        }
        extension_crashlytics_set_bool_jni(key, value);
        #elseif ios
        extension_crashlytics_set_bool(key, value);
        #end
    }

    public static function setDouble (key:String, value:Float):Void {
        #if (android && openfl)
        if (extension_crashlytics_set_double_jni == null) {
            extension_crashlytics_set_double_jni = JNI.createStaticMethod ("org.haxe.extension.ExtensionCrashlytics", "setDouble", "(Ljava/lang/String;D)V");
        }
        extension_crashlytics_set_double_jni(key, value);
        #elseif ios
        extension_crashlytics_set_double(key, value);
        #end
    }

    public static function setFloat (key:String, value:Float):Void {
        #if (android && openfl)
        if (extension_crashlytics_set_float_jni == null) {
            extension_crashlytics_set_float_jni = JNI.createStaticMethod ("org.haxe.extension.ExtensionCrashlytics", "setFloat", "(Ljava/lang/String;F)V");
        }
        extension_crashlytics_set_float_jni(key, value);
        #elseif ios
        extension_crashlytics_set_float(key, value);
        #end
    }

    public static function setInt (key:String, value:Int):Void {
        #if (android && openfl)
        if (extension_crashlytics_set_int_jni == null) {
            extension_crashlytics_set_int_jni = JNI.createStaticMethod ("org.haxe.extension.ExtensionCrashlytics", "setInt", "(Ljava/lang/String;I)V");
        }
        extension_crashlytics_set_int_jni(key, value);
        #elseif ios
        extension_crashlytics_set_int(key, value);
        #end
    }

    public static function setString (key:String, value:String):Void {
        #if (android && openfl)
        if (extension_crashlytics_set_string_jni == null) {
            extension_crashlytics_set_string_jni = JNI.createStaticMethod ("org.haxe.extension.ExtensionCrashlytics", "setString", "(Ljava/lang/String;Ljava/lang/String;)V");
        }
        extension_crashlytics_set_string_jni(key, value);
        #elseif ios
        extension_crashlytics_set_string(key, value);
        #end
    }

    public static function setUserIdentifier (identifier:String):Void {
        #if (android && openfl)
        if (extension_crashlytics_set_user_identifier_jni == null) {
            extension_crashlytics_set_user_identifier_jni = JNI.createStaticMethod ("org.haxe.extension.ExtensionCrashlytics", "setUserIdentifier", "(Ljava/lang/String;)V");
        }
        extension_crashlytics_set_user_identifier_jni(identifier);
        #elseif ios
        extension_crashlytics_set_user_identifier(identifier);
        #end
    }

    public static function setUserName (name:String):Void {
        #if (android && openfl)
        if (extension_crashlytics_set_user_name_jni == null) {
            extension_crashlytics_set_user_name_jni = JNI.createStaticMethod ("org.haxe.extension.ExtensionCrashlytics", "setUserName", "(Ljava/lang/String;)V");
        }
        extension_crashlytics_set_user_name_jni(name);
        #elseif ios
        extension_crashlytics_set_user_name(name);
        #end
    }

    public static function setUserEmail (email:String):Void {
        #if (android && openfl)
        if (extension_crashlytics_set_user_email_jni == null) {
            extension_crashlytics_set_user_email_jni = JNI.createStaticMethod ("org.haxe.extension.ExtensionCrashlytics", "setUserEmail", "(Ljava/lang/String;)V");
        }
        extension_crashlytics_set_user_email_jni(email);
        #elseif ios
        extension_crashlytics_set_user_email(email);
        #end
    }


    #if (android && openfl)
    private static var extension_crashlytics_init_jni: Dynamic;
    private static var extension_crashlytics_log_jni: Dynamic;
    private static var extension_crashlytics_trace_jni: Dynamic;
    private static var extension_crashlytics_set_bool_jni: Dynamic;
    private static var extension_crashlytics_set_double_jni: Dynamic;
    private static var extension_crashlytics_set_float_jni: Dynamic;
    private static var extension_crashlytics_set_int_jni: Dynamic;
    private static var extension_crashlytics_set_string_jni: Dynamic;
    private static var extension_crashlytics_set_user_identifier_jni: Dynamic;
    private static var extension_crashlytics_set_user_name_jni: Dynamic;
    private static var extension_crashlytics_set_user_email_jni: Dynamic;
    #elseif ios
    private static var extension_crashlytics_init = Lib.load ("extension_crashlytics", "extension_crashlytics_init", 0);
    private static var extension_crashlytics_log = Lib.load ("extension_crashlytics", "extension_crashlytics_log", 1);
    private static var extension_crashlytics_trace = Lib.load ("extension_crashlytics", "extension_crashlytics_trace", 1);
    private static var extension_crashlytics_set_bool = Lib.load ("extension_crashlytics", "extension_crashlytics_set_bool", 2);
    private static var extension_crashlytics_set_double = Lib.load ("extension_crashlytics", "extension_crashlytics_set_double", 2);
    private static var extension_crashlytics_set_float = Lib.load ("extension_crashlytics", "extension_crashlytics_set_float", 2);
    private static var extension_crashlytics_set_int = Lib.load ("extension_crashlytics", "extension_crashlytics_set_int", 2);
    private static var extension_crashlytics_set_string = Lib.load ("extension_crashlytics", "extension_crashlytics_set_string", 2);
    private static var extension_crashlytics_set_user_identifier = Lib.load ("extension_crashlytics", "extension_crashlytics_set_user_identifier", 1);
    private static var extension_crashlytics_set_user_name = Lib.load ("extension_crashlytics", "extension_crashlytics_set_user_name", 1);
    private static var extension_crashlytics_set_user_email = Lib.load ("extension_crashlytics", "extension_crashlytics_set_user_email", 1);
    #end

}
