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
            url: "https://artifactory.basarsoft.com.tr/artifactory/generic-release-local/pods/yolbil/YolbilMobileSDK-SPM/2.6.5/YolbilMobileSDK.xcframework.zip",
            checksum: "0ff754a3c7b0dedb1d81c8a4138077dd2a02bc90389da46426d22b52ef4cb426"
        ),
        
        .binaryTarget(
            name: "INVLicenseManager",
            url: "https://artifactory.basarsoft.com.tr/artifactory/generic-release-local/pods/inavi/INVLicenseManager/4.0.1/INVLicenseManager.xcframework.zip",
            checksum: "3a9f7b3d024f6c8b375d87c1e88a5db936f906454bd2d24865c0df7c1e01abb6"
        ),
        
        .binaryTarget(
            name: "INVSensorManager",
            url: "https://artifactory.basarsoft.com.tr/artifactory/generic-release-local/pods/inavi/INVSensorManager/4.0.1/INVSensorManager.xcframework.zip",
            checksum: "4d8a3665ccac581d7a107113f4cabf65ed6eb8c2e22f69741a60b904b02fd6be"
        ),
        
        .binaryTarget(
            name: "INVPackageManager",
            url: "https://artifactory.basarsoft.com.tr/artifactory/generic-release-local/pods/inavi/INVPackageManager/4.0.1/INVPackageManager.xcframework.zip",
            checksum: "9cd9d2ae0245bbee41875811afc7d8b4a95a098b6d4424d37a4f69d4bb2a8c40"
        ),
        
        .binaryTarget(
            name: "INVHelper",
            url: "https://artifactory.basarsoft.com.tr/artifactory/generic-release-local/pods/inavi/INVHelper/0.2.3/INVHelper.xcframework.zip",
            checksum: "0bb816ba65eefa464290d30c52c440fc5904ab44ee9dca12653e4c360a258711"
        ),
        
        .binaryTarget(
            name: "INVObjects",
            url: "https://artifactory.basarsoft.com.tr/artifactory/generic-release-local/pods/inavi/INVObjects/4.0.0/INVObjects.xcframework.zip",
            checksum: "3adfa208562bdb2449a3bcb300a3b07fe9c907c20589939af963fcc01920eb01"
        ),
        
        .binaryTarget(
            name: "INVCppHelper",
            url: "https://artifactory.basarsoft.com.tr/artifactory/generic-release-local/pods/inavi/INVCppHelper/4.0.0/INVCppHelper.xcframework.zip",
            checksum: "024e4eb89c8829df81ae13a11703dd21d398a13bc17119cc5fbc1e9895480091"
        ),
        
        .binaryTarget(
            name: "INVSmoothing",
            url: "https://artifactory.basarsoft.com.tr/artifactory/generic-release-local/pods/inavi/INVSmoothing/4.0.0/INVSmoothing.xcframework.zip",
            checksum: "8f023017967b475fef2e6d0aacf139a9347b6fb05a31ce14c5b8687946badca4"
        ),

        .binaryTarget(
            name: "INVflatbuffers",
            url: "https://artifactory.basarsoft.com.tr/artifactory/generic-release-local/pods/inavi/INVflatbuffers/0.1.3/INVflatbuffers.xcframework.zip",
            checksum: "6c3f4be5cfb81ae3afdfa042f4b9095ccc47d7259d951190d50bd2e728eafc7b"
        ),

        .binaryTarget(
            name: "INVData",
            url: "https://artifactory.basarsoft.com.tr/artifactory/generic-release-local/pods/inavi/INVData/4.0.1/INVData.xcframework.zip",
            checksum: "ea5271292253e49ddc6cb77c27d4b0afa3e8bcf556d3f4a1e3bc68a68ed8d954"
        ),

        .binaryTarget(
            name: "INVeventpp",
            url: "https://artifactory.basarsoft.com.tr/artifactory/generic-release-local/pods/inavi/INVeventpp/0.1.3/INVeventpp.xcframework.zip",
            checksum: "e8d4786320cf97b932d7050816d64810b33561dfd7adbb962536a89a5a7d0836"
        ),

        .binaryTarget(
            name: "INVAlglib",
            url: "https://artifactory.basarsoft.com.tr/artifactory/generic-release-local/pods/inavi/INVAlglib/0.1.3/INVAlglib.xcframework.zip",
            checksum: "3e8bea18d84cdfa5ffb79f3ce889766bfea7c37957b15511bef397a083f95d18"
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
