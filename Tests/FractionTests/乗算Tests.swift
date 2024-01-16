import XCTest

@testable import Fraction

final class 乗算Tests: XCTestCase {
  func test整数同士の乗算() {
    let a: 分数 = 12
    let b: 分数 = 24

    let result = a * b

    XCTAssertEqual(result, 288)
  }

  func test小数同士の乗算() {
    let a: 分数 = 0.1
    let b: 分数 = 0.2

    let result = a * b

    XCTAssertEqual(result, 0.02)
  }

  func test分数同士の乗算() {
    let a: 分数 = "5 / 24"
    let b: 分数 = "1 / 36"

    let result = a * b

    XCTAssertEqual(result, "5 / 864")
  }

  func test分数の乗算代入() {
    var a: 分数 = 0.3
    let b: 分数 = "- 1 / 2"

    a *= b

    let expected: 分数 = -0.15
    XCTAssertEqual(a, expected)
  }
}
