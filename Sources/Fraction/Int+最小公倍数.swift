import Foundation

extension Int {
  func 最小公倍数(_ target: Self) -> Self {
    self / 最大公約数(target) * target
  }
}
