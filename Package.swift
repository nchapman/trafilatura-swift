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
            url: "https://github.com/nchapman/trafilatura-rs/releases/download/v0.5.0/TrafilaturaFFI.xcframework.zip",
            checksum: "9f7830a54a45699d26e5293de5af0195296369ec55c0e2edd324f17b7ee147dd"
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
