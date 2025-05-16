import Testing
@testable import SimpleTextUtils


struct SimpleTextUtilsTests {

	@Test("Verificar si una cadena está vacía o solo contiene espacios en blanco")
	func testIsBlank() throws {
		// Casos que deben retornar true
		#expect(SimpleTextUtils.isBlank(nil))
		#expect(SimpleTextUtils.isBlank(""))
		#expect(SimpleTextUtils.isBlank("   "))
		#expect(SimpleTextUtils.isBlank("\n\t"))

		// Casos que deben retornar false
		#expect(!SimpleTextUtils.isBlank("a"))
		#expect(!SimpleTextUtils.isBlank(" a "))
	}

	@Test("Verificar capitalización de palabras")
	func testCapitalizeWords() throws {
		#expect(SimpleTextUtils.capitalizeWords("hello world") == "Hello World")
		#expect(SimpleTextUtils.capitalizeWords("swift programming") == "Swift Programming")
		#expect(SimpleTextUtils.capitalizeWords("UPPERCASE TEXT") == "Uppercase Text")
	}

	@Test("Verificar conteo de palabras")
	func testWordCount() throws {
		#expect(SimpleTextUtils.wordCount("") == 0)
		#expect(SimpleTextUtils.wordCount("One") == 1)
		#expect(SimpleTextUtils.wordCount("Hello World") == 2)
		#expect(SimpleTextUtils.wordCount("  Spaces   between  words  ") == 3)
	}
}