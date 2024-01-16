import Foundation

extension 分数 {
  public static func / (lhs: Self, rhs: Self) -> Self {
    lhs * rhs.逆数
  }

  public static func /= (lhs: inout Self, rhs: Self) {
    lhs = lhs / rhs
  }
}
