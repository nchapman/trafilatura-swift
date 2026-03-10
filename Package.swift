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
            url: "https://github.com/nchapman/trafilatura-rs/releases/download/v0.3.7/TrafilaturaFFI.xcframework.zip",
            checksum: "5b8f22247ff45a92bf3021c8635108f27fbdc1f92c3f8734959059812e144a0f"
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
