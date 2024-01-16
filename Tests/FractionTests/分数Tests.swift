import XCTest

@testable import Fraction

final class 分数Tests: XCTestCase {
  func test小数0_3を初期化する() {
    let fraction: 分数 = 0.3

    XCTAssertEqual(fraction.分子, 3)
    XCTAssertEqual(fraction.分母, 10)
  }

  func test小数123_45を初期化する() {
    let fraction: 分数 = 123.45

    XCTAssertEqual(fraction.分子, 2469)
    XCTAssertEqual(fraction.分母, 20)
  }

  func test整数12345を初期化する() {
    let fraction: 分数 = 12345

    XCTAssertEqual(fraction.分子, 12345)
    XCTAssertEqual(fraction.分母, 1)
  }

  func test文字列3_141592546を初期化する() {
    let fraction: 分数 = "3.141592546"

    XCTAssertEqual(fraction.分子, 1_570_796_273)
    XCTAssertEqual(fraction.分母, 500_000_000)
  }

  func test負の数の文字列17216_17231を初期化する() {
    let fraction: 分数 = "-17216.17231"

    XCTAssertEqual(fraction.分子, -1_721_617_231)
    XCTAssertEqual(fraction.分母, 100000)
  }

  func test分数6分の2をを初期化する() {
    let fraction: 分数 = "2 / 6"

    XCTAssertEqual(fraction.分子, 1)
    XCTAssertEqual(fraction.分母, 3)
  }

  func test整数の分数を文字列に表す() {
    let a: 分数 = 3

    XCTAssertEqual(a.description, "3")
  }

  func test小数の分数を文字列に表す() {
    let a: 分数 = 0.3

    XCTAssertEqual(a.description, "0.3")
  }

  func test分数を文字列に表す() {
    let a: 分数 = -1
    let b: 分数 = 3

    XCTAssertEqual((a / b).description, "- 1 / 3")
  }
}
