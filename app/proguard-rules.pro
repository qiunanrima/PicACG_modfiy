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

# ===== Gson =====
-keepattributes SerializedName
-keep class com.google.gson.** { *; }
-keepclassmembers class * {
    @com.google.gson.annotations.SerializedName <fields>;
}

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

# ===== AgentWeb =====
-keep class com.just.agentweb.** { *; }
-dontwarn com.just.agentweb.**

# ===== Compose =====
-dontwarn androidx.compose.**
