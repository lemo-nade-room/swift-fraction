import Foundation

extension Int {
  func 最大公約数(_ target: Self) -> Self {
    var a = self
    var b = target
    while b != 0 {
      let t = b
      b = a % b
      a = t
    }
    return a
  }
}
