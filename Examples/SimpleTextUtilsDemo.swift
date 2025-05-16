import SwiftUI
import SimpleTextUtils

struct SimpleTextUtilsDemo: View {
    @State private var inputText = ""
    @State private var wordCount = 0
    @State private var capitalizedText = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("SimpleTextUtils Demo")
                .font(.largeTitle)
                .padding()
            
            VStack(alignment: .leading) {
                Text("Entrada de texto:")
                    .font(.headline)
                
                TextField("Escribe algo aquí...", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom)
                
                if SimpleTextUtils.isBlank(inputText) {
                    Text("El campo está vacío o solo contiene espacios")
                        .foregroundColor(.orange)
                        .padding(.bottom)
                }
            }
            .padding(.horizontal)
            
            HStack(spacing: 20) {
                Button("Contar palabras") {
                    wordCount = SimpleTextUtils.wordCount(inputText)
                }
                .buttonStyle(.bordered)
                
                Button("Capitalizar") {
                    capitalizedText = SimpleTextUtils.capitalizeWords(inputText)
                }
                .buttonStyle(.bordered)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Resultados:")
                    .font(.headline)
                
                HStack {
                    Text("Número de palabras:")
                    Text("\(wordCount)")
                        .bold()
                }
                
                if !capitalizedText.isEmpty {
                    HStack {
                        Text("Texto capitalizado:")
                        Text(capitalizedText)
                            .bold()
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SimpleTextUtilsDemo()
}