// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "RgbLib",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "RgbLib",
            targets: ["rgb_libFFI", "RgbLib"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .binaryTarget(name: "rgb_libFFI", path: "./rgb_libFFI.xcframework"),
        .binaryTarget(
           name: "rgb_libFFI",
           url: "https://github.com/RGB-Tools/rgb-lib-swift/releases/download/0.1.1/rgb_libFFI.xcframework.zip",
           checksum: "ce1a1761674c0c5ca3fec4cbced05d1bfe377d0a7cab01d6727d4d03a2fab248"),
        .target(
            name: "RgbLib",
            dependencies: ["rgb_libFFI"]),
    ]
)
