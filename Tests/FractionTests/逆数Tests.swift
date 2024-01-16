import XCTest

@testable import Fraction

final class 逆数Tests: XCTestCase {
  func test整数同士の減算() {
    let a: 分数 = "13 / 24"

    XCTAssertEqual(a.逆数, "24 / 13")
  }
}
