//
//  TakeScreenshotParameter.swift
//  Open-Jellycore
//
//  Created by Taylor Lineman on 6/02/23.
//

struct TakeScreenshotParameter: ParameterProtocol, Codable {

    static func build(call: [FunctionCallParameterItem], scopedVariables: [Variable]) -> ParameterProtocol {
        return TakeScreenshotParameter()
    }
     
    static func getDefaultValues() -> [String: String] {
        return [
:
        ]
    }
}
