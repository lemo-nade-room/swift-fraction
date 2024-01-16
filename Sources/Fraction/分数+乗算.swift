import Foundation

extension 分数 {
  public static func * (lhs: Self, rhs: Self) -> Self {
    .init(
      分子: lhs.分子 * rhs.分子,
      分母: lhs.分母 * rhs.分母
    )
  }

  public static func *= (lhs: inout Self, rhs: Self) {
    lhs = lhs * rhs
  }
}
