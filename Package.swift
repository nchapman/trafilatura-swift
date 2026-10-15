// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Trafilatura",
    platforms: [.macOS(.v12), .iOS(.v15)],
    products: [
        .library(name: "Trafilatura", targets: ["Trafilatura"]),
    ],
    targets: [
        .binaryTarget(
            name: "TrafilaturaFFI",
            url: "https://github.com/nchapman/trafilatura-rs/releases/download/v0.4.0/TrafilaturaFFI.xcframework.zip",
            checksum: "4a6b2986d701c7513d8d10e149199c4597ac28aab50dcea021f3dde27fd3a3e1"
        ),
        .target(
            name: "Trafilatura",
            dependencies: ["TrafilaturaFFI"],
            path: "Sources/Trafilatura",
            linkerSettings: [
                .linkedFramework("CoreFoundation"),
            ]
        ),
    ]
)
