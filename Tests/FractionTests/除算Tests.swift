import XCTest

@testable import Fraction

final class 除算Tests: XCTestCase {
  func test整数同士の除算() {
    let a: 分数 = 12
    let b: 分数 = 24

    let result = a / b

    XCTAssertEqual(result, "1 / 2")
  }

  func test小数同士の除算() {
    let a: 分数 = 0.3
    let b: 分数 = 0.2

    let result = a / b

    XCTAssertEqual(result, 1.5)
  }

  func test分数同士の除算() {
    let a: 分数 = "5 / 24"
    let b: 分数 = "1 / 36"

    let result = a / b

    XCTAssertEqual(result, "15 / 2")
  }

  func test分数の除算代入() {
    var a: 分数 = "1 / 2"
    let b: 分数 = "1 / 4"

    a /= b

    XCTAssertEqual(a, 2)
  }
}
