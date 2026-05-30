import coil.setupLibraryModule

plugins {
    id("com.android.library")
}

setupLibraryModule(name = "coil.video")

dependencies {
    api(projects.coilBase)

    implementation(libs.androidx.core)

    testImplementation(projects.coilTestInternal)
    testImplementation(libs.bundles.test.jvm)

    androidTestImplementation(projects.coilTestInternal)
    androidTestImplementation(libs.bundles.test.android)
}
