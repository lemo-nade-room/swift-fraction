import XCTest

@testable import Fraction

final class 最大公約数Tests: XCTestCase {
  func test2と3の最大公約数は1() {
    XCTAssertEqual(2.最大公約数(3), 1)
  }

  func test4と6の最大公約数は2() {
    XCTAssertEqual(4.最大公約数(6), 2)
  }

  func test98と245の最大公約数は49() {
    XCTAssertEqual(98.最大公約数(245), 49)
  }
}
