//
//  GetScreenContextParameter.swift
//  Open-Jellycore
//
//  Created by Taylor Lineman on 6/02/23.
//

struct GetScreenContextParameter: ParameterProtocol, Codable {

    static func build(call: [FunctionCallParameterItem], scopedVariables: [Variable]) -> ParameterProtocol {
        return GetScreenContextParameter()
    }
     
    static func getDefaultValues() -> [String: String] {
        return [
:
        ]
    }
}
