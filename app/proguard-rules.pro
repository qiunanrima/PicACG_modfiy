# ===== 基本配置 =====
-dontusemixedcaseclassnames
-classobfuscationdictionary proguard-dict.txt
-packageobfuscationdictionary proguard-dict.txt
-repackageclasses 'o'

# ===== Android 通用 =====
-keepattributes Signature
-keepattributes *Annotation*
-keepattributes EnclosingMethod
-keepattributes InnerClasses
-keepattributes Exceptions

# ===== App 启动 =====
-keep class com.picacomic.fregata.MyApplication {
    public static *** bx(...);
    public static *** by(...);
    public *** bz(...);
    public *** c(...);
}

# Manifest 组件和 launcher alias 目标必须保持稳定，避免系统按旧类名启动失败。
-keep class com.picacomic.fregata.activities.** { *; }
-keep class com.picacomic.fregata.services.** { *; }
-keep class com.picacomic.fregata.DemoLoginActivity { *; }

# ===== Gson =====
-keepattributes SerializedName
-keep class com.google.gson.** { *; }
-keepclassmembers class * {
    @com.google.gson.annotations.SerializedName <fields>;
}
-keep class com.picacomic.fregata.objects.** { *; }
-keep class com.picacomic.fregata.b.** { *; }
-keep class com.picacomic.fregata.compose.viewmodels.** { *; }
-keep class com.picacomic.fregata.viewmodels.** { *; }

# ===== Retrofit =====
-keepattributes RuntimeVisibleAnnotations, RuntimeVisibleParameterAnnotations
-keepclassmembers,allowshrinking,allowobfuscation interface * {
    @retrofit2.http.* <methods>;
}
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
-dontwarn javax.annotation.**
-dontwarn kotlin.Unit
-dontwarn retrofit2.KotlinExtensions
-dontwarn retrofit2.KotlinExtensions$*

# ===== OkHttp / Okio =====
-dontwarn okhttp3.**
-dontwarn okio.**
-keep class okhttp3.** { *; }
-keep class okio.** { *; }

# ===== Socket.IO =====
-keep class io.socket.** { *; }
-dontwarn io.socket.**

# ===== Sugar ORM =====
-keep class com.orm.** { *; }
-keep class * extends com.orm.SugarRecord {
    <fields>;
    <methods>;
}
-keep class com.picacomic.fregata.objects.databaseTable.** { *; }
-keepnames class * extends com.orm.SugarRecord

# ===== AgentWeb =====
-keep class com.just.agentweb.** { *; }
-dontwarn com.just.agentweb.**

# ===== Compose =====
-dontwarn androidx.compose.**

# ===== Android Parcelable / Serializable =====
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator CREATOR;
}
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}
