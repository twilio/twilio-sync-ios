// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "TwilioSync",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "TwilioSync",
            targets: ["TwilioSyncTarget"]),
    ],
    targets: [
        .target(
          name: "TwilioSyncTarget",
          dependencies: [
              .target(name: "TwilioSync"),
              .target(name: "TwilioSyncLib"),
          ],
          path: "Dummy"
        ),
        .binaryTarget(
            name: "TwilioSync",
            url: "https://github.com/twilio/twilio-sync-ios/releases/download/v3.0.0-beta1/twilio-sync-3.0.0-beta1.zip",
            checksum: "47e612846dbf5a827245b746d9760a6d755978e5d846a8bda15b0592ec8c246f"
        ),
        .binaryTarget(
            name: "TwilioSyncLib",
            url: "https://github.com/twilio/twilio-sync-ios/releases/download/v3.0.0-beta1/twilio-sync-lib-3.0.0-beta1.zip",
            checksum: "a51c7ea53eec7fbc38c3b18f5b68c5abea24754ce2ee9f28a52d5b4a854bae10"
        ),
    ]
)
