import Testing

import Slipstream

private struct LanguageView: View {
  var body: some View {
    HTML {
      DOMString("Bonjour!")
    }
    .language("fr")
  }
}

struct LanguageTests {
  @Test func french() throws {
    try #expect(renderHTML(LanguageView()) == """
<html lang="fr">
 Bonjour!
</html>
""")
  }
}
