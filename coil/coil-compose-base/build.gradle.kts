import coil.setupLibraryModule

plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.plugin.compose")
}

setupLibraryModule(name = "coil.compose.base") {
    buildFeatures {
        compose = true
    }
}

dependencies {
    api(projects.coilBase)

    implementation(libs.androidx.core)
    implementation(libs.accompanist.drawablepainter)
    api(libs.compose.foundation)
}
