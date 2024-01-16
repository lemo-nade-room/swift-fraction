import XCTest

@testable import Fraction

final class 最小公倍数Tests: XCTestCase {
  func test2と3の最小公倍数は6() {
    XCTAssertEqual(2.最小公倍数(3), 6)
  }

  func test4と6の最大公約数は12() {
    XCTAssertEqual(4.最小公倍数(6), 12)
  }

  func test98と245の最大公約数は49() {
    XCTAssertEqual(98.最小公倍数(245), 490)
  }

  func test1と1の最大公約数は1() {
    XCTAssertEqual(1.最小公倍数(1), 1)
  }
}
