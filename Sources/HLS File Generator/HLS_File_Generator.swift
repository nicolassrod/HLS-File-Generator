import Foundation

struct HLS_File_Generator {
    var text = "Hello, World!"
    
    static func main() {
        print("hello")
        
        let fm = FileManager.default
        let si = fm.createFile(atPath: "./nicolas.txt", contents: "nicolas".data(using: .utf8), attributes: nil)
        print(si)
        
    }
    
}
