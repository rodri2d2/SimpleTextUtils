# Ejemplos de uso de SimpleTextUtils

Este directorio contiene ejemplos de cómo utilizar la biblioteca SimpleTextUtils en aplicaciones reales.

## SimpleTextUtilsDemo.swift

Este archivo contiene un ejemplo de una vista SwiftUI que utiliza todas las funcionalidades de SimpleTextUtils:

- Verificación de texto en blanco con `isBlank()`
- Capitalización de palabras con `capitalizeWords()`
- Conteo de palabras con `wordCount()`

Para utilizar este ejemplo:

1. Crea un nuevo proyecto SwiftUI
2. Agrega SimpleTextUtils como dependencia
3. Copia el contenido de `SimpleTextUtilsDemo.swift` a tu proyecto
4. Utiliza `SimpleTextUtilsDemo()` en tu estructura de vistas

## Implementación manual

Si prefieres implementar manualmente las funcionalidades, aquí hay algunos ejemplos de código:

### Verificar si un texto está en blanco

```swift
import SimpleTextUtils

func checkIfEmpty(_ text: String?) {
    if SimpleTextUtils.isBlank(text) {
        print("El texto está vacío o solo contiene espacios")
    } else {
        print("El texto contiene caracteres válidos")
    }
}

// Ejemplos de uso:
checkIfEmpty(nil)        // "El texto está vacío o solo contiene espacios"
checkIfEmpty("")         // "El texto está vacío o solo contiene espacios"
checkIfEmpty("   ")      // "El texto está vacío o solo contiene espacios"
checkIfEmpty("Hola")     // "El texto contiene caracteres válidos"
```

### Capitalizar palabras

```swift
import SimpleTextUtils

let textos = [
    "hola mundo",
    "swift es genial",
    "PROGRAMACIÓN EN SWIFT"
]

for texto in textos {
    let capitalizado = SimpleTextUtils.capitalizeWords(texto)
    print("Original: \(texto)")
    print("Capitalizado: \(capitalizado)")
    print("---")
}

// Salida:
// Original: hola mundo
// Capitalizado: Hola Mundo
// ---
// Original: swift es genial
// Capitalizado: Swift Es Genial
// ---
// Original: PROGRAMACIÓN EN SWIFT
// Capitalizado: Programación En Swift
// ---
```

### Contar palabras

```swift
import SimpleTextUtils

func analizarTexto(_ texto: String) {
    let numeroPalabras = SimpleTextUtils.wordCount(texto)
    print("Texto: \"\(texto)\"")
    print("Número de palabras: \(numeroPalabras)")
}

// Ejemplos de uso:
analizarTexto("")                                  // 0 palabras
analizarTexto("Hola")                              // 1 palabra
analizarTexto("Swift Package Manager")             // 3 palabras
analizarTexto("  Espacios   múltiples   aquí  ")   // 3 palabras
```