import Testing

import Slipstream

struct HTMLTests {
  @Test func emptyBlock() throws {
    try #expect(renderHTML(HTML {}) == "<html></html>")
  }

  @Test func withText() throws {
    try #expect(renderHTML(HTML {
      DOMString("Hello, world!")
    }) == """
<html>
 Hello, world!
</html>
""")
  }
}
