import XCTest

@testable import Fraction

final class 減算Tests: XCTestCase {
  func test整数同士の減算() {
    let a: 分数 = 12
    let b: 分数 = 35

    let result = a - b

    XCTAssertEqual(result, -23)
  }

  func test小数同士の減算() {
    let a: 分数 = 0.3
    let b: 分数 = 0.1

    let result = a - b

    XCTAssertEqual(result, 0.2)
  }

  func test分数同士の減算() {
    let a: 分数 = "5 / 24"
    let b: 分数 = "1 / 36"

    let result = a - b

    XCTAssertEqual(result, "13 / 72")
  }
}
