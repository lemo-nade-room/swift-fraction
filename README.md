# Swift Vapor Cloudflare

![LICENSE](https://img.shields.io/badge/license-MIT-brightgreen.svg)

## Overview

このライブラリは分数を扱うライブラリです。

### 主な機能
1. 分数の四則演算
2. 分数のべき乗
3. 分数の絶対値や逆数

## 使い方

```swift
var a: 分数 = 5
let b: 分数 = 2.3
let c: 分数 = "0.5"
let d: 分数 = "- 4 /7"

// 四則演算
a + b
a - b
a * b
a / b

// 代入演算子
a += b
a -= b
a *= b
a /= b

// べき乗
a ** 2

// 絶対値
a.絶対値

// 逆数
a.逆数
```

## インストール方法

### Swift Package Manager

`Package.swift`ファイルの`dependencies`に追加してください。

```swift
// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Project",
    platforms: [
       .macOS(.v13)
    ],
    dependencies: [
        ...
        .package(url: "https://github.com/lemo-nade-room/swift-fraction", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "App",
            dependencies: [
                .product(name: "Fraction", package: "swift-fraction"),
            ],
            swiftSettings: [
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ]
        ),
        .executableTarget(name: "Run", dependencies: [.target(name: "App")]),
        .testTarget(name: "AppTests", dependencies: [
            .target(name: "App"),
        ])
    ]
)
```

## License

`swift-fraction`はMITで公開しています。 ライセンスファイルをご覧ください。