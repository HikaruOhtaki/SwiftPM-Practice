// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "BuildTools",
  platforms: [
    .macOS(.v10_15)
  ],
  dependencies: [
    .package(url: "https://github.com/mac-cain13/R.swift", from: "6.0.0"),
    .package(url: "https://github.com/realm/SwiftLint", from: "0.45.0"),
    .package(url: "https://github.com/peripheryapp/periphery", from: "2.8.2")
  ],
  targets: [
    .target(
      name: "BuildTools",
      path: ""
    )
  ]
)
