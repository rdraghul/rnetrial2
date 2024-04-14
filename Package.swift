// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "RaghulsNeuralEngine",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RaghulsNeuralEngine",
            targets: ["RaghulsNeuralEngine", "OTGFunctions"]), // Include "OTGFunctions" if it is part of the public API
    ],
    dependencies: [
        // No dependencies in this package
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RaghulsNeuralEngine",
            dependencies: ["OTGFunctions"]), // Include "OTGFunctions" as a dependency if the target depends on it
        .testTarget(
            name: "RaghulsNeuralEngineTests",
            dependencies: ["RaghulsNeuralEngine"]),
        .binaryTarget(
            name: "OTGFunctions",
            url: "https://github.com/rdraghul/RNEOTGtrials/releases/download/v1.0.0/OTGFunctions.framework.zip", // Adjust the URL to point to the correct release asset
            checksum: "65e8fa377ff6f9c32c0b38ffc80d8209ea9d96678362c3b13406b2ce1213cc21"
        )
    ]
)
