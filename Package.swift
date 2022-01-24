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
            url: "https://media.twiliocdn.com/sdk/ios/sync/releases/1.1.1/twilio-sync-ios-1.1.1.zip",
            checksum: "818a9d2d005e866db0021b399c4f3ee50f248ac4b5a99f01fbb3ecfddf5ac443"
        )
    ]
)
