import Foundation

precedencegroup べき乗Precedence {
  higherThan: MultiplicationPrecedence
  associativity: left
  assignment: true
}

infix operator ** : べき乗Precedence
infix operator **= : AssignmentPrecedence

extension 分数 {
  public static func ** (lhs: Self, rhs: Int) -> Self {
    let 指数 = abs(rhs)
    let is負の指数 = rhs < 0
    let result: 分数 =
      if 指数 == 0 {
        1
      } else if 指数 == 1 {
        lhs
      } else if 指数 == 2 {
        lhs * lhs
      } else if 指数 % 2 == 0 {
        (lhs ** (指数 / 2)) ** 2
      } else {
        lhs * (lhs ** (指数 - 1))
      }
    return is負の指数 ? result.逆数 : result
  }

  public static func **= (lhs: inout Self, rhs: Int) {
    lhs = lhs ** rhs
  }
}
