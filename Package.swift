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
            url: "https://sdk.twilio.com/ios/sync/releases/2.0.2/twilio-sync-ios-2.0.2.zip",
            checksum: "d9969a26757b642b6aee86849e22f9c8cd1c764d2275178dc0816625ac8ab170"
        ),
    ]
)
