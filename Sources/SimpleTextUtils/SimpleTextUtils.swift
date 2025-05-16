// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

/// Una colección de utilidades sencillas para manipulación de texto
public struct SimpleTextUtils {

	/// Verifica si una cadena está vacía o solo contiene espacios en blanco
	/// - Parameter text: La cadena a verificar
	/// - Returns: `true` si la cadena está vacía o solo contiene espacios
	public static func isBlank(_ text: String?) -> Bool {
		guard let text = text else { return true }
		return text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
	}

	/// Capitaliza la primera letra de cada palabra en una cadena
	/// - Parameter text: La cadena a capitalizar
	/// - Returns: Una cadena con la primera letra de cada palabra en mayúscula
	public static func capitalizeWords(_ text: String) -> String {
		return text.capitalized
	}

	/// Cuenta el número de palabras en una cadena
	/// - Parameter text: La cadena para contar las palabras
	/// - Returns: El número de palabras
	public static func wordCount(_ text: String) -> Int {
		let components = text.components(separatedBy: .whitespacesAndNewlines)
		return components.filter { !$0.isEmpty }.count
	}
}