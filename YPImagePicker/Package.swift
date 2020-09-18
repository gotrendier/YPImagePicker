// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YPImagePicker",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "YPImagePicker",
            targets: ["YPImagePicker"]),
    ],
    dependencies: [
        .package(url: "https://github.com/HHK1/PryntTrimmerView.git", .exact("4.0.2")),
        .package(url: "https://github.com/freshOS/Stevia", .exact("5.0.1"))
    ],
    targets: [
        .target(
            name: "YPImagePicker",
            dependencies: []),
        .testTarget(
            name: "YPImagePickerTests",
            dependencies: ["YPImagePicker"]),
    ]
)
