import Foundation

extension 分数 {
  public static func + (lhs: Self, rhs: Self) -> Self {
    let 最小公倍数 = lhs.分母.最小公倍数(rhs.分母)
    return .init(
      分子: lhs.分子 * (最小公倍数 / lhs.分母) + rhs.分子 * (最小公倍数 / rhs.分母),
      分母: 最小公倍数
    )
  }
}
