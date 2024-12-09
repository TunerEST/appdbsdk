// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppdbFramework",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AppdbFramework",
            targets: [
                "AppdbRemoteBinaryPackage"
            ]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
       .binaryTarget(
           name: "AppdbRemoteBinaryPackage",
           url: "https://dbservices.to/lib-dist/AppdbFramework-1.6.0.xcframework.zip",
           checksum: "4221f2ef3f6acaba42e05c21d554fe00368dcd98b171eb1c95c4dbfca4baefa2"
       ),
    ]
)
