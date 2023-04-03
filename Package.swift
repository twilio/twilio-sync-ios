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
            .upToNextMajor(from: "1.0.0"))
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
            url: "https://sdk.twilio.com/ios/sync/releases/2.0.0/twilio-sync-ios-2.0.0.zip",
            checksum: "27dbf067f48628bb50f1289ea50e1ac08142fdb751df0544d4de91da1fbd6294"
        ),
    ]
)
