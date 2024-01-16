import XCTest

@testable import Fraction

final class べき乗Tests: XCTestCase {
  func test整数のべき乗() {
    let a: 分数 = 12

    let result = a ** 2

    XCTAssertEqual(result, 144)
  }

  func test小数のべき乗() {
    let a: 分数 = 0.2

    let result = a ** 3

    XCTAssertEqual(result, 0.008)
  }

  func test分数のべき乗() {
    let a: 分数 = "2 / 5"

    let result = a ** 3

    XCTAssertEqual(result, "8 / 125")
  }

  func test負のべき乗() {
    let a: 分数 = 2

    let result = a ** -4

    XCTAssertEqual(result, "1/16")
  }

  func test1のべき乗() {
    let a: 分数 = 1

    let result = a ** 100000

    XCTAssertEqual(result, "1")
  }

  func test負の1のべき乗() {
    let a: 分数 = -1

    let result = a ** 100000

    XCTAssertEqual(result, "1")
  }

  func test分数の代入べき乗() {
    var a: 分数 = 3

    a **= 5

    XCTAssertEqual(a, 243)
  }
}
