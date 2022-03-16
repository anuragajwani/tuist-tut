import ProjectDescription
let project = Project(
    name: "SaladMaker",
    organizationName: "com.anuragajwani",
    targets: [
        Target(
            name: "SaladMaker",
            platform: .iOS,
            product: .app,
            bundleId: "com.anuragajwani.SaladMaker",
            deploymentTarget: .iOS(targetVersion: "14.0", devices: .iphone),
            infoPlist: "SaladMaker/Info.plist",
            sources: ["SaladMaker/**"],
            resources: ["SaladMaker/Assets.xcassets/"],
            dependencies: [
                .target(name: "SayHelloKit"),
                .external(name: "Alamofire")
            ]
        ),
        Target(
            name: "SayHelloKit",
            platform: .iOS,
            product: .framework,
            bundleId: "com.anuragajwani.SayHelloKit",
            deploymentTarget: .iOS(targetVersion: "14.0", devices: .iphone),
            sources: ["SayHelloKit/**"],
            settings: .settings(base: ["GENERATE_INFOPLIST_FILE": "YES"])
        )
    ]
)
