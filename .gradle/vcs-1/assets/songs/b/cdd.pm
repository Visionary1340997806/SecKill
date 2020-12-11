1<?xml version="1.0" encoding="utf-8"?>
2<manifest xmlns:android="http://schemas.android.com/apk/res/android"
3    package="com.yjf.myutils"
4    android:versionCode="1"
5    android:versionName="1.0" >
6
7    <uses-sdk
8        android:minSdkVersion="28"
8-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml
9        android:targetSdkVersion="30" />
9-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml
10
11    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
11-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:5:5-79
11-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:5:22-76
12    <uses-permission android:name="android.permission.INTERNET" />
12-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:6:5-67
12-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:6:22-64
13    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
13-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:7:5-80
13-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:7:22-78
14    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
14-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:8:5-79
14-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:8:22-77
15
16    <application
16-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:10:5-45:19
17        android:name="com.yjf.myutils.App"
17-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:11:9-28
18        android:allowBackup="true"
18-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:12:9-35
19        android:appComponentFactory="androidx.core.app.CoreComponentFactory"
19-->[androidx.core:core:1.3.1] C:\Users\George\.gradle\caches\transforms-2\files-2.1\2e20aa6327d74cdbe04119328213861c\core-1.3.1\AndroidManifest.xml:24:18-86
20        android:debuggable="true"
21        android:icon="@mipmap/ic_launcher"
21-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:13:9-43
22        android:installLocation="preferExternal"
22-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:19:9-49
23        android:label="@string/app_name"
23-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:14:9-41
24        android:requestLegacyExternalStorage="true"
24-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:18:9-52
25        android:roundIcon="@mipmap/ic_launcher_round"
25-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:15:9-54
26        android:supportsRtl="true"
26-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:16:9-35
27        android:testOnly="true"
28        android:theme="@style/AppTheme"
28-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:20:9-40
29        android:usesCleartextTraffic="true" >
29-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:17:9-44
30        <activity android:name="com.yjf.myutils.activity.MainActivity" >
30-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:21:9-27:20
30-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:21:19-56
31            <intent-filter>
31-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:22:13-26:29
32                <action android:name="android.intent.action.MAIN" />
32-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:23:17-69
32-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:23:25-66
33                <action android:name="android.intent.action.VIEW" />
33-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:24:17-69
33-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:24:25-66
34
35                <category android:name="android.intent.category.LAUNCHER" />
35-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:25:17-77
35-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:25:27-74
36            </intent-filter>
37        </activity>
38        <activity
38-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:29:9-32:20
39            android:name="com.yjf.myutils.activity.SplashActivity"
39-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:29:19-58
40            android:configChanges="orientation|keyboardHidden|screenSize|navigation"
40-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:31:13-85
41            android:screenOrientation="landscape" >
41-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:30:13-50
42        </activity>
43        <activity
43-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:34:9-38:20
44            android:name="com.yjf.myutils.activity.LoginActivity"
44-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:34:19-57
45            android:configChanges="orientation|keyboardHidden|screenSize|navigation"
45-->E:\work\android\MyUtils\app\src\main\AndroidManifest.xml:37:13-85
46            android:screenOrientation="landscape"
46-->E:\work\andro