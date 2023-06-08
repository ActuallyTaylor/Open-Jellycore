//
//  IsBluetoothOnParameter.swift
//  Open-Jellycore
//
//  Created by Taylor Lineman on 6/02/23.
//

struct IsBluetoothOnParameter: ParameterProtocol, Codable {

    static func build(call: [FunctionCallParameterItem], scopedVariables: [Variable]) -> ParameterProtocol {
        return IsBluetoothOnParameter()
    }
     
    static func getDefaultValues() -> [String: String] {
        return [
:
        ]
    }
}
