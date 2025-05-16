# SimpleTextUtils

![Swift Version](https://img.shields.io/badge/Swift-6.0-orange)
![SPM Compatible](https://img.shields.io/badge/SPM-Compatible-brightgreen)
![Platform](https://img.shields.io/badge/Platform-iOS-lightgrey)

Una biblioteca Swift ligera para operaciones comunes de manipulación de texto.

## Características

- Verificación de texto en blanco
- Capitalización de palabras
- Conteo de palabras
- Pruebas unitarias con el nuevo framework Swift Testing

## Requisitos

- iOS 16.0+
- Swift 6.0+
- Xcode 15.0+

## Instalación

### Swift Package Manager

SimpleTextUtils está disponible a través de [Swift Package Manager](https://swift.org/package-manager/).

#### Xcode
1. Selecciona File > Add Packages...
2. Introduce la URL: `https://github.com/rodri2d2/SimpleTextUtils.git`
3. Selecciona "Up to Next Major Version" con "1.0.0"

#### Package.swift
```swift
dependencies: [
    .package(url: "https://github.com/rodri2d2/SimpleTextUtils.git", from: "1.0.0")
]
```

## Uso

### Verificar si un texto está en blanco

```swift
import SimpleTextUtils

// Verificar si un texto está vacío o solo contiene espacios
let isEmpty = SimpleTextUtils.isBlank("   ")  // true
let hasText = SimpleTextUtils.isBlank("Hola") // false

// Funciona con opcionales
let nilText: String? = nil
SimpleTextUtils.isBlank(nilText) // true
```

### Capitalizar palabras

```swift
let text = "hola mundo"
let capitalized = SimpleTextUtils.capitalizeWords(text) // "Hola Mundo"
```

### Contar palabras

```swift
let wordCount = SimpleTextUtils.wordCount("Swift es increíble") // 3
```

## Ejemplos

A continuación se muestra un ejemplo de uso en una aplicación SwiftUI:

```swift
import SwiftUI
import SimpleTextUtils

struct ContentView: View {
    @State private var inputText = ""
    @State private var wordCount = 0
    
    var body: some View {
        VStack {
            TextField("Ingresa texto", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Contar palabras") {
                wordCount = SimpleTextUtils.wordCount(inputText)
            }
            .padding()
            
            Text("Número de palabras: \(wordCount)")
            
            if SimpleTextUtils.isBlank(inputText) {
                Text("El campo está vacío")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}
```

## Pruebas

SimpleTextUtils incluye pruebas unitarias escritas con el nuevo framework Swift Testing. Para ejecutar las pruebas:

```bash
swift test
```

O en Xcode, selecciona "Product > Test".

## Contribuir

Las contribuciones son bienvenidas! Por favor, siéntete libre de enviar un PR.

## Licencia

SimpleTextUtils está disponible bajo la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más información.