import XCTest
import SwiftUI
@testable import PennyFramework

final class PennyFrameworkTests: XCTestCase {
    @State private var text: String = ""
    
    func testExample() {
        var body: some View {
            PennyFramework.MainTextField(placeholder: "Testing", text: $text)
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
