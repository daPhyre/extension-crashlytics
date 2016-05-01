#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif


#include <hx/CFFI.h>
#include "ExtensionCrashlytics.h"


using namespace extension_crashlytics;


static value extension_crashlytics_init () {

    init();
    return alloc_null();

}
DEFINE_PRIM (extension_crashlytics_init, 0);


static value extension_crashlytics_log (value msg) {

    log(val_string(msg));
    return alloc_null();

}
DEFINE_PRIM (extension_crashlytics_log, 1);


static value extension_crashlytics_trace (value msg) {

    trace(val_string(msg));
    return alloc_null();

}
DEFINE_PRIM (extension_crashlytics_trace, 1);


static value extension_crashlytics_set_bool (value key, value value) {

    setBool(val_string(key), val_bool(value));
    return alloc_null();

}
DEFINE_PRIM (extension_crashlytics_set_bool, 2);


static value extension_crashlytics_set_double (value key, value value) {

    setDouble(val_string(key), val_float(value));
    return alloc_null();

}
DEFINE_PRIM (extension_crashlytics_set_double, 2);


static value extension_crashlytics_set_float (value key, value value) {

    setFloat(val_string(key), val_float(value));
    return alloc_null();

}
DEFINE_PRIM (extension_crashlytics_set_float, 2);


static value extension_crashlytics_set_int (value key, value value) {

    setInt(val_string(key), val_int(value));
    return alloc_null();

}
DEFINE_PRIM (extension_crashlytics_set_int, 2);


static value extension_crashlytics_set_string (value key, value value) {

    setString(val_string(key), val_string(value));
    return alloc_null();

}
DEFINE_PRIM (extension_crashlytics_set_string, 2);


static value extension_crashlytics_set_user_identifier (value identifier) {

    setUserIdentifier(val_string(identifier));
    return alloc_null();

}
DEFINE_PRIM (extension_crashlytics_set_user_identifier, 1);


static value extension_crashlytics_set_user_name (value name) {

    setUserName(val_string(name));
    return alloc_null();

}
DEFINE_PRIM (extension_crashlytics_set_user_name, 1);


static value extension_crashlytics_set_user_email (value email) {

    setUserEmail(val_string(email));
    return alloc_null();

}
DEFINE_PRIM (extension_crashlytics_set_user_email, 1);


/*
static value extension_crashlytics_sample_method (value inputValue) {

    int returnValue = SampleMethod(val_int(inputValue));
    return alloc_int(returnValue);

}
DEFINE_PRIM (extension_crashlytics_sample_method, 1);
*/


extern "C" void extension_crashlytics_main () {

    val_int(0); // Fix Neko init

}
DEFINE_ENTRY_POINT (extension_crashlytics_main);



extern "C" int extension_crashlytics_register_prims () { return 0; }
