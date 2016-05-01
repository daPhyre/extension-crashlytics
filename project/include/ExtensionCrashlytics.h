#ifndef EXTENSION_CRASHLYTICS_H
#define EXTENSION_CRASHLYTICS_H


namespace extension_crashlytics {

    void init();
    void log(const char *msg);
    void trace(const char *msg);
    void setBool(const char *key, bool value);
    void setDouble(const char *key, double value);
    void setFloat(const char *key, float value);
    void setInt(const char *key, int value);
    void setString(const char *key, const char *value);
    void setUserIdentifier(const char *identifier);
    void setUserName(const char *name);
    void setUserEmail(const char *email);

}

#endif
