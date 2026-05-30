import coil.setupLibraryModule

plugins {
    id("com.android.library")
}

setupLibraryModule(name = "coil.singleton")

dependencies {
    api(projects.coilBase)
}
