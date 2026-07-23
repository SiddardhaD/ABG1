plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.abg.riverpod_boilerplate_code"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.abg"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    // Each product flavor is one of the client's separate apps. The
    // applicationIdSuffix + app_name resValue give each flavor a distinct
    // package name and home-screen label, so they install side by side.
    flavorDimensions += "app"
    productFlavors {
        create("locationAvailabilityInquiry") {
            dimension = "app"
            applicationIdSuffix = ".locationavailabilityinquiry"
            resValue("string", "app_name", "Location Availability Inquiry")
        }
        create("orderToBePicked") {
            dimension = "app"
            applicationIdSuffix = ".ordertobepicked"
            resValue("string", "app_name", "Order to be Picked")
        }
        create("orderToBeShipped") {
            dimension = "app"
            applicationIdSuffix = ".ordertobeshipped"
            resValue("string", "app_name", "Order to be Shipped")
        }
        create("deliveryNotePrint") {
            dimension = "app"
            applicationIdSuffix = ".deliverynoteprint"
            resValue("string", "app_name", "Delivery Note Print")
        }
        create("invoice") {
            dimension = "app"
            applicationIdSuffix = ".invoice"
            resValue("string", "app_name", "Invoice")
        }
        create("poToReceive") {
            dimension = "app"
            applicationIdSuffix = ".potoreceive"
            resValue("string", "app_name", "PO to Receive")
        }
        create("grnToPrint") {
            dimension = "app"
            applicationIdSuffix = ".grntoprint"
            resValue("string", "app_name", "GRN to Print")
        }
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
