// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMDepNetrc",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPMDepNetrc",
            targets: ["SPMDepNetrc"]),
        .library(name: "SAPCommon", targets: ["SAPCommon"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "SAPCommon",
            url: "https://rbsc.repositories.sap.ondemand.com/nexus3/repository/maven73554900100900005307dev/com/sap/mobile/platform/client/hcp/sdk/ios/foundation/SAPCommon/6.0.0/SAPCommon-6.0.0-Release-xcframework.zip",
            checksum: "6692f2b83f57e6709c642cc24e8283d4fb16a4e8b18a20c221ba7672fb2afb95"),
        .target(
            name: "SPMDepNetrc",
            dependencies: []),
        .testTarget(
            name: "SPMDepNetrcTests",
            dependencies: ["SPMDepNetrc"]),
    ]
)
