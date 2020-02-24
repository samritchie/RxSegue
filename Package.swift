// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "RxSegue",
  platforms: [
    .iOS(.v9), .tvOS(.v9), macOS(.v10_15)
  ],
  products: [
    .library(name: "RxSegue", targets: ["RxSegue"])
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0"))
  ],
  targets: [
    .target(name: "RxSegue", dependencies: ["RxSwift"])
  ],
  swiftLanguageVersions: [.v5]
)