// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let defaultSwiftSettings: [SwiftSetting] = [
  .unsafeFlags(["-Xfrontend", "-warn-long-function-bodies=200"]),
]

let package = Package(
    name: "MyApp",
    defaultLocalization: "ja",
    platforms: [
      .iOS(.v14)
    ],
    products: [
        .library(
            name: "MyApp",
            targets: ["MyApp"]),
    ],
    dependencies: [
        .package(url: "https://github.com/YAtechnologies/GoogleMaps-SP", .upToNextMinor(from: "6.0.0")),
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "8.9.1"),
        .package(url: "https://github.com/scenee/FloatingPanel", from: "2.5.0"),
        .package(url: "https://github.com/mac-cain13/R.swift.Library", from: "5.3.0"),
        .package(url: "https://github.com/Juanpe/SkeletonView", from: "1.26.0"),
    ],
    targets: [
        .target(
            name: "MyApp",
            dependencies: [
                .productItem(name: "GoogleMaps", package: "GoogleMaps-SP", condition: nil),
                .productItem(name: "FirebaseAnalytics", package: "firebase-ios-sdk", condition: nil),
                .productItem(name: "FirebaseAuth", package: "firebase-ios-sdk", condition: nil),
                .productItem(name: "FirebaseCrashlytics", package: "firebase-ios-sdk", condition: nil),
                .productItem(name: "FirebaseDynamicLinks", package: "firebase-ios-sdk", condition: nil),
                .productItem(name: "FirebaseFirestore", package: "firebase-ios-sdk", condition: nil),
                .productItem(name: "FirebaseFirestoreSwift-Beta", package: "firebase-ios-sdk", condition: nil),
                .productItem(name: "FirebaseFunctions", package: "firebase-ios-sdk", condition: nil),
                .productItem(name: "FirebaseMessaging", package: "firebase-ios-sdk", condition: nil),
                .productItem(name: "FirebaseRemoteConfig", package: "firebase-ios-sdk", condition: nil),
                .productItem(name: "FirebaseStorage", package: "firebase-ios-sdk", condition: nil),
                .productItem(name: "FloatingPanel", package: "FloatingPanel", condition: nil),
                .productItem(name: "Rswift", package: "R.swift.Library", condition: nil),
                .productItem(name: "SkeletonView", package: "SkeletonView", condition: nil),
            ],
            path: "Sources",
            swiftSettings: defaultSwiftSettings
        ),
        .testTarget(
            name: "MyAppTests",
            dependencies: ["MyApp"]),
    ]
)
