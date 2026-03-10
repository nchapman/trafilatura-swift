// swift-tools-version: 5.9
import PackageDescription

// This package is populated by CI from trafilatura-rs.
// See https://github.com/nchapman/trafilatura-rs for details.
let package = Package(
    name: "Trafilatura",
    platforms: [.macOS(.v12), .iOS(.v15)],
    products: [
        .library(name: "Trafilatura", targets: ["Trafilatura"]),
    ],
    targets: [
        .binaryTarget(
            name: "TrafilaturaFFI",
            url: "https://github.com/nchapman/trafilatura-rs/releases/download/v0.0.0/TrafilaturaFFI.xcframework.zip",
            checksum: "0000000000000000000000000000000000000000000000000000000000000000"
        ),
        .target(
            name: "Trafilatura",
            dependencies: ["TrafilaturaFFI"],
            path: "Sources/Trafilatura"
        ),
    ]
)
