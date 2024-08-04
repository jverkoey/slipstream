/// A flex view that positions its views vertically.
///
/// ```swift
/// struct MySiteContent: View {
///   var body: some View {
///     Body {
///       VStack {
///         Div {
///           Text("Hello,")
///         }
///         Div {
///           Text("world!")
///         }
///       }
///     }
///   }
/// }
/// ```
@available(iOS 17.0, macOS 14.0, *)
public struct VStack<Content: View>: View {
  /// Creates an HStack view.
  ///
  /// - Parameters:
  ///   - spacing: If provided, the amount of spacing to add between child views. The value is
  ///   expressed in points, and mapped to the closest Tailwind CSS spacing class.
  ///   - reversed: If true, the contents will be arranged vertically from bottom to top.
  ///   - content: The content to display with this view.
  public init(spacing: Double? = nil, reversed: Bool = false, @ViewBuilder content: @escaping () -> Content) {
    self.spacing = spacing
    self.reversed = reversed
    self.content = content
  }

  @_documentation(visibility: private)
  public var body: some View {
    let container = Div { content() }
      .display(.flex)
      .flexDirection(.y, reversed: reversed)
    if let spacing {
      container
        .flexGap(.y, width: spacing)
    } else {
      container
    }
  }

  private let spacing: Double?
  private let reversed: Bool
  private let content: () -> Content
}
