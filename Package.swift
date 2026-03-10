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
            url: "https://github.com/nchapman/trafilatura-rs/releases/download/v0.3.5/TrafilaturaFFI.xcframework.zip",
            checksum: "3611800b2da57823e0ce0aa250476f666b09fc9ba1cec168615392b51450f411"
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
