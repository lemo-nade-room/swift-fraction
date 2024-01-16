extension 分数 {
  public var 絶対値: 分数 {
    分子 < 0 ? self * -1 : self
  }
}
