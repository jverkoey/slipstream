import SwiftSoup

/// A View created from an if/else conditional of View values.
@_documentation(visibility: private)
@available(iOS 17.0, macOS 14.0, *)
public struct ConditionalView<T: View, F: View>: View {
  enum Condition {
    case isTrue(T)
    case isFalse(F)
  }

  init(condition: Condition) {
    self.condition = condition
  }

  private let condition: Condition

  public func render(_ container: Element, environment: EnvironmentValues) throws {
    switch condition {
    case .isTrue(let view):
      try view.render(container, environment: environment)
    case .isFalse(let view):
      try view.render(container, environment: environment)
    }
  }
}
