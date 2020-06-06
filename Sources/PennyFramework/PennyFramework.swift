import SwiftUI

public struct PennyFramework {
    public struct MainTextField: View {
        @State private var placeholder: String
        @Binding var text: String
        
        public init(placeholder: String, text: Binding<String>) {
            self._placeholder = State(initialValue: placeholder)
            self._text = text
        }
        
        public var body: some View {
            HStack {
                Image(systemName: "person").foregroundColor(Color.blue)
                TextField(placeholder, text: $text)
                    .font(.system(size: 20, weight: .bold, design: .default))
                     .foregroundColor(Color.blue)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 2))
        }
    }
}
