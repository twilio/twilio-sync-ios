// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TwilioSyncClient",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "TwilioSyncClient",
            targets: ["TwilioSyncClient"]),
    ],
    targets: [
        .binaryTarget(
            name: "TwilioSyncClient",
            url: "https://sdk.twilio.com/ios/sync/releases/1.2.1/twilio-sync-ios-1.2.1.zip",
            checksum: "2dd01bea43263c616c96ec1caf439f1b0a9e9b5aced3da140c102a112e0d4278"
        )
    ]
)
