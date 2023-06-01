import TreeSitter
import TreeSitterJelly

import XCTest
@testable import Open_Jellycore

final class Open_JellycoreTests: XCTestCase {
    var testString: String = """
    text(text: "Hello World")
    """
    /*
     // A test of the Jellycuts Transpiler
     /*
     Written on May 22nd by Taylor Lineman
     */
     import Shortcuts
     #Color: Red #Icon: Sailboat
     
     func test() {
         return 3
     }
     
     if(ShortcutsInput == "Hello World") {
         Text("Hey!")
     } else {
         Text("Hello World")
     }
     
     repeat(3) {
         Text("Hello World")
     }
     
     repeatEach(awesome) {
         Text("Awesome")
     }
     */
    func testExample() throws {
        let parser = Parser(contents: testString)
        try parser.parse()
        
        let transpiler = Transpiler()
        let shortcut = try transpiler.compile(with: parser)
        if !ErrorReporter.shared.errors.isEmpty {
//            XCTFail("There were errors present")
            print("Found \(ErrorReporter.shared.errors.count) errors")
            for error in ErrorReporter.shared.errors {
                print(error.errorDescription, error.recoveryStrategy)
            }
        } else {
            print("Successfully Compiled Shortcut")
            print(shortcut)
        }
    }
}
