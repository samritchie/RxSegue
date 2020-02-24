// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "RxDataSources",
  platforms: [
    .iOS(.v8), .tvOS(.v9)
  ],
  products: [
    .library(name: "RxSegue", targets: ["RxSegue-iOS"])
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0"))
  ],
  targets: [
    .target(name: "RxSegue", dependencies: ["RxSwift", "RxCocoa"])
  ],
  swiftLanguageVersions: [.v5]
)