import Foundation

extension 分数 {
  public static func - (lhs: Self, rhs: Self) -> Self {
    var rhs = rhs
    rhs.分子 *= -1
    return lhs + rhs
  }
}
