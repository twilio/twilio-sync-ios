// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TwilioSyncClient",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "TwilioSyncClient",
            targets: ["TwilioSyncClient"]),
    ],
    targets: [
        .binaryTarget(
            name: "TwilioSyncClient",
            url: "https://media.twiliocdn.com/sdk/ios/sync/releases/1.1.0/twilio-sync-ios-1.1.0.zip",
            checksum: "1f2ff3caea120cadfca0c9e50128489861836ab37aa46f411c164db15f6510e7"
        )
    ]
)
