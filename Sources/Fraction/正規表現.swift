import RegexBuilder

let 小数正規表現 = Regex {
  Anchor.startOfLine
  ZeroOrMore(.whitespace)
  Capture {
    Optionally("-")
  }
  ZeroOrMore(.whitespace)
  Capture {
    OneOrMore(.digit)
  }
  Optionally {
    "."
    Capture {
      OneOrMore(.digit)
    }
  }
  ZeroOrMore(.whitespace)
  Anchor.endOfLine
}

let 分数正規表現 = Regex {
  Anchor.startOfLine
  ZeroOrMore(.whitespace)
  Capture {
    Optionally("-")
  }
  ZeroOrMore(.whitespace)
  Capture {
    OneOrMore(.digit)
  }
  ZeroOrMore(.whitespace)
  "/"
  ZeroOrMore(.whitespace)
  Capture {
    OneOrMore(.digit)
  }
  Anchor.endOfLine
}
