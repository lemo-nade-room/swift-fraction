import Foundation
import RegexBuilder

public struct 分数: Hashable, Codable, Sendable {
  public var 分子: Int
  public var 分母: Int

  public init(分子: Int, 分母: Int) {
    let 最大公約数 = 分子.最大公約数(分母)
    self.分子 = 分子 / 最大公約数
    self.分母 = 分母 / 最大公約数
  }
}

extension 分数: ExpressibleByFloatLiteral {
  public init(floatLiteral value: Double) {
    self.init(stringLiteral: value.description)
  }
}

extension 分数: ExpressibleByIntegerLiteral {
  public init(integerLiteral value: Int) {
    self.init(分子: value, 分母: 1)
  }
}

extension 分数: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    if let (_, キャプチャ符号, キャプチャ整数部, キャプチャ小数部) = value.firstMatch(of: 小数正規表現)?.output {
      let 小数部 = キャプチャ小数部.map(String.init) ?? ""
      let 整数部 = String(キャプチャ符号) + String(キャプチャ整数部)
      self.init(
        分子: Int(整数部 + 小数部)!,
        分母: Int(pow(10, Double(小数部.count)))
      )
      return
    }

    if let (_, キャプチャ符号, キャプチャ分子, キャプチャ分母) = value.firstMatch(of: 分数正規表現)?.output {
      let 符号 = String(キャプチャ符号)
      let 分子 = String(キャプチャ分子)
      let 分母 = String(キャプチャ分母)
      self.init(
        分子: Int(符号 + 分子)!,
        分母: Int(分母)!
      )
      return
    }

    fatalError("キャプチャに失敗しました。")
  }
}

extension 分数: Comparable {
  public static func < (lhs: 分数, rhs: 分数) -> Bool {
    let 最小公倍数 = lhs.分母.最小公倍数(rhs.分母)
    let 通分後の左辺分子 = lhs.分子 * (最小公倍数 / lhs.分母)
    let 通分後の右辺分子 = rhs.分子 * (最小公倍数 / rhs.分母)
    return 通分後の左辺分子 < 通分後の右辺分子
  }
}
