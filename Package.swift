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
            url: "https://github.com/nchapman/trafilatura-rs/releases/download/v0.6.1/TrafilaturaFFI.xcframework.zip",
            checksum: "0ab21aeea830f46eb3f777cb1b56cc80e5b0128c643d06e95decf41118946180"
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
