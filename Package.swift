// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "YolbilMobileSDK",
    platforms: [
        .iOS(.v15)
    ],

    products: [
        .library(
            name: "YolbilMobileSDK",
            targets: ["YolbilMobileSDKWrapper"]
        )
    ],
    
    targets: [
        .binaryTarget(
            name: "YolbilMobileSDK",
            path: "../../../../../../../../../../Users/dilancirkin/works/git/sdk-yeni/mobile-sdk/scripts/flutter_yolbilx/ios/YolbilMobileSDK.xcframework"
        ),
        
        .binaryTarget(
            name: "INVLicenseManager",
            path: "../../../../../../../../../../Users/dilancirkin/works/ios/yolbilconnected/Yolbil Navigasyon/Pods/INVLicenseManager/INVLicenseManager.xcframework"
        ),
        
        .binaryTarget(
            name: "INVSensorManager",
            path: "../../../../../../../../../../Users/dilancirkin/works/ios/yolbilconnected/Yolbil Navigasyon/Pods/INVSensorManager/INVSensorManager.xcframework"
        ),
        
        .binaryTarget(
            name: "INVPackageManager",
            path: "../../../../../../../../../../Users/dilancirkin/works/ios/yolbilconnected/Yolbil Navigasyon/Pods/INVPackageManager/INVPackageManager.xcframework"
        ),
        
        .binaryTarget(
            name: "INVHelper",
            path: "../../../../../../../../../../Users/dilancirkin/works/ios/yolbilconnected/Yolbil Navigasyon/Pods/INVHelper/INVHelper.xcframework"
        ),
        
        .binaryTarget(
            name: "INVObjects",
            path: "../../../../../../../../../../Users/dilancirkin/works/ios/yolbilconnected/Yolbil Navigasyon/Pods/INVObjects/INVObjects.xcframework"
        ),
        
        .binaryTarget(
            name: "INVCppHelper",
            path: "../../../../../../../../../../Users/dilancirkin/works/ios/yolbilconnected/Yolbil Navigasyon/Pods/INVCppHelper/INVCppHelper.xcframework"
        ),
        
        .binaryTarget(
            name: "INVSmoothing",
            path: "../../../../../../../../../../Users/dilancirkin/works/ios/yolbilconnected/Yolbil Navigasyon/Pods/INVSmoothing/INVSmoothing.xcframework"
        ),

        .binaryTarget(
            name: "INVflatbuffers",
            path: "../../../../../../../../../../Users/dilancirkin/works/ios/yolbilconnected/Yolbil Navigasyon/Pods/INVflatbuffers/INVflatbuffers.xcframework"
        ),

        .binaryTarget(
            name: "INVData",
            path: "../../../../../../../../../../Users/dilancirkin/works/ios/yolbilconnected/Yolbil Navigasyon/Pods/INVData/INVData.xcframework"
        ),

        .binaryTarget(
            name: "INVeventpp",
            path: "../../../../../../../../../../Users/dilancirkin/works/ios/yolbilconnected/Yolbil Navigasyon/Pods/INVeventpp/INVeventpp.xcframework"
        ),

        .binaryTarget(
            name: "INVAlglib",
            path: "../../../../../../../../../../Users/dilancirkin/works/ios/yolbilconnected/Yolbil Navigasyon/Pods/INVAlglib/INVAlglib.xcframework"
        ),
        
        .target(
            name: "YolbilMobileSDKWrapper",
            dependencies: [
                "YolbilMobileSDK",
                "INVLicenseManager",
                "INVSensorManager",
                "INVPackageManager",
                "INVHelper",
                "INVObjects",
                "INVCppHelper",
                "INVSmoothing",
                "INVflatbuffers",
                "INVData",
                "INVeventpp",
                "INVAlglib"

            ],
            path: "Sources/YolbilMobileSDKWrapper",
            linkerSettings: [
                .linkedLibrary("c++"),
                
                .linkedFramework("Foundation"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("Security"),
                .linkedFramework("SystemConfiguration"),
                
                .linkedFramework("CFNetwork"),
                
                .linkedLibrary("z"),
                .linkedLibrary("bz2"),
                
                .linkedLibrary("resolv")
            ]
        )
    ]
)
