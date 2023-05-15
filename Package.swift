// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "TwilioSyncClient",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "TwilioSyncClient",
            targets: ["TwilioSyncClientTarget"]),
    ],
    dependencies: [
        .package(
            name: "TwilioTwilsockLib",
            url: "https://github.com/twilio/twilsock-ios",
            .upToNextMajor(from: "2.0.1"))
    ],
    targets: [
        .target(
          name: "TwilioSyncClientTarget",
          dependencies: [
              .target(name: "TwilioSyncClient"), 
              .product(name: "TwilioTwilsockLib", package: "TwilioTwilsockLib")
          ],
          path: "Dummy"
        ),
        .binaryTarget(
            name: "TwilioSyncClient",
            url: "https://sdk.twilio.com/ios/sync/releases/2.0.1/twilio-sync-ios-2.0.1.zip",
            checksum: "4f5da67d89e4e25dca6e3e19f62ef99df33580538772545096e5a59fbef73e38"
        ),
    ]
)
