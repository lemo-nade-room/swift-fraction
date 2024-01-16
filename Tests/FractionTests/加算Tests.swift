import XCTest

@testable import Fraction

final class 加算Tests: XCTestCase {
  func test整数同士の加算() {
    let a: 分数 = 12
    let b: 分数 = 24

    let result = a + b

    XCTAssertEqual(result, 36)
  }

  func test小数同士の足し算() {
    let a: 分数 = 0.1
    let b: 分数 = 0.2

    let result = a + b

    XCTAssertEqual(result, 0.3)
  }

  func test分数同士の足し算() {
    let a: 分数 = "5 / 24"
    let b: 分数 = "1 / 36"

    let result = a + b

    XCTAssertEqual(result, "17 / 72")
  }

  func test分数の代入加算() {
    var a: 分数 = 5.8
    let b: 分数 = "1 / 2"

    a += b

    XCTAssertEqual(a, 6.3)
  }
}
