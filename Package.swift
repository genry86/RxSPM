// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxSPM",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(name: "Rx", targets: ["Rx"]),
        .library(name: "RxTesting", targets: ["RxTesting"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.1.1")),
        .package(url: "https://github.com/RxSwiftCommunity/Action.git", .upToNextMajor(from: "4.0.1")),
        .package(url: "https://github.com/RxSwiftCommunity/RxSwiftExt.git", .upToNextMajor(from: "5.2.0")),
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources", .upToNextMajor(from: "4.0.1")),
        .package(url: "https://github.com/RxSwiftCommunity/RxGesture.git", .upToNextMajor(from: "3.0.3")),
        .package(url: "https://github.com/pixeldock/RxAppState.git", .upToNextMajor(from: "1.6.1")),
        .package(url: "https://github.com/RxSwiftCommunity/RxKeyboard.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "14.0.0")),
        .package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "2.2.0")),
        .package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "8.0.4")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.2.2")),
        .package(url: "https://github.com/Alamofire/AlamofireImage.git", .upToNextMajor(from: "4.1.0")),
    ],
    targets: [
        .target(
          name: "Rx",
            dependencies:[
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "RxRelay", package: "RxSwift"),
                .product(name: "Action", package: "Action"),
                .product(name: "RxSwiftExt", package: "RxSwiftExt"),
                .product(name: "RxDataSources", package: "RxDataSources"),
//                .product(name: "Differentiator", package: "RxDataSources"),
                .product(name: "RxGesture", package: "RxGesture"),
                .product(name: "RxAppState", package: "RxAppState"),
                .product(name: "RxKeyboard", package: "RxKeyboard"),
                .product(name: "Moya", package: "Moya"),
                .product(name: "RxMoya", package: "Moya"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "AlamofireImage", package: "AlamofireImage"),
            ]
        ),
        .target(
          name: "RxTesting",
            dependencies: [
                .product(name: "RxTest", package: "RxSwift"),
                .product(name: "RxBlocking", package: "RxSwift"),
                .product(name: "Quick", package: "Quick"),
                .product(name: "Nimble", package: "Nimble"),
            ]
        )
    ]
)
