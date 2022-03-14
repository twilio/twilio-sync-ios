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
            url: "https://media.twiliocdn.com/sdk/ios/sync/releases/1.2.0/twilio-sync-ios-1.2.0.zip",
            checksum: "4ef0b8fd195bb9f3c77c29d6560db289e29ebe9525d7ae0b25b0b7962bedac56"
        )
    ]
)
