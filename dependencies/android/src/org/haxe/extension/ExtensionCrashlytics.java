package org.haxe.extension;


import android.app.Activity;
import android.content.res.AssetManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.crashlytics.android.Crashlytics;
import io.fabric.sdk.android.Fabric;


/*
  You can use the Android Extension class in order to hook
  into the Android activity lifecycle. This is not required
  for standard Java code, this is designed for when you need
  deeper integration.

  You can access additional references from the Extension class,
  depending on your needs:

  - Extension.assetManager (android.content.res.AssetManager)
  - Extension.callbackHandler (android.os.Handler)
  - Extension.mainActivity (android.app.Activity)
  - Extension.mainContext (android.content.Context)
  - Extension.mainView (android.view.View)

  You can also make references to static or instance methods
  and properties on Java classes. These classes can be included
  as single files using <java path="to/File.java" /> within your
  project, or use the full Android Library Project format (such
  as this example) in order to include your own AndroidManifest
  data, additional dependencies, etc.

  These are also optional, though this example shows a static
  function for performing a single task, like returning a value
  back to Haxe from Java.
*/
public class ExtensionCrashlytics extends Extension {

    public static void init() {

        android.util.Log.println(4, "trace", "[Crashlytics " + Crashlytics.getInstance().getVersion() + "]");
        //printApiKey();

    }

    public static void printApiKey() {

        try {
            ApplicationInfo info = mainActivity.getPackageManager().getApplicationInfo(mainActivity.getPackageName(), PackageManager.GET_META_DATA);
            android.util.Log.println(4, "trace", "[CRASHLYTICS API KEY " + info.metaData.getString("io.fabric.ApiKey") + " FOR " + mainActivity.getPackageName() + "]");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void log(String msg) {

        Crashlytics.log(msg);

    }

    public static void trace(String msg) {

        Crashlytics.log(4, "trace", msg);

    }

    public static void setBool(String key, boolean value) {

        Crashlytics.setBool(key, value);

    }

    public static void setDouble(String key, double value) {

        Crashlytics.setDouble(key, value);

    }

    public static void setFloat(String key, float value) {

        Crashlytics.setFloat(key, value);

    }

    public static void setInt(String key, int value) {

        Crashlytics.setInt(key, value);

    }

    public static void setString(String key, String value) {

        Crashlytics.setString(key, value);

    }

    public static void setUserIdentifier(String identifier) {

        Crashlytics.setUserIdentifier(identifier);

    }

    public static void setUserName(String name) {

        Crashlytics.setUserName(name);

    }

    public static void setUserEmail(String email) {

        Crashlytics.setUserEmail(email);

    }

    /**
     * Called when an activity you launched exits, giving you the requestCode
     * you started it with, the resultCode it returned, and any additional data
     * from it.
     */
    public boolean onActivityResult (int requestCode, int resultCode, Intent data) {

        return true;

    }


    /**
     * Called when the activity is starting.
     */
    public void onCreate (Bundle savedInstanceState) {

        try {
            Fabric.with(mainContext, new Crashlytics());
        } catch (Exception e) {
            android.util.Log.println(4, "trace", "[Crashlytics] Error starting up.");
            e.printStackTrace();
        }

    }


    /**
     * Perform any final cleanup before an activity is destroyed.
     */
    public void onDestroy () {



    }


    /**
     * Called as part of the activity lifecycle when an activity is going into
     * the background, but has not (yet) been killed.
     */
    public void onPause () {



    }


    /**
     * Called after {@link #onStop} when the current activity is being
     * re-displayed to the user (the user has navigated back to it).
     */
    public void onRestart () {



    }


    /**
     * Called after {@link #onRestart}, or {@link #onPause}, for your activity
     * to start interacting with the user.
     */
    public void onResume () {



    }


    /**
     * Called after {@link #onCreate} &mdash; or after {@link #onRestart} when
     * the activity had been stopped, but is now again being displayed to the
     * user.
     */
    public void onStart () {



    }


    /**
     * Called when the activity is no longer visible to the user, because
     * another activity has been resumed and is covering this one.
     */
    public void onStop () {



    }


}
