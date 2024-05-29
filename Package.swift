// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Callerid",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Callerid",
            targets: ["CallerIDPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "CallerIDPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CallerIDPlugin"),
        .testTarget(
            name: "CallerIDPluginTests",
            dependencies: ["CallerIDPlugin"],
            path: "ios/Tests/CallerIDPluginTests")
    ]
)