import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(HLS_File_GeneratorTests.allTests),
    ]
}
#endif
