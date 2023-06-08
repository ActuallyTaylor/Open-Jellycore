//
//  DeviceMotionParameter.swift
//  Open-Jellycore
//
//  Created by Taylor Lineman on 6/02/23.
//

struct DeviceMotionParameter: ParameterProtocol, Codable {

    static func build(call: [FunctionCallParameterItem], scopedVariables: [Variable]) -> ParameterProtocol {
        return DeviceMotionParameter()
    }
     
    static func getDefaultValues() -> [String: String] {
        return [
:
        ]
    }
}
