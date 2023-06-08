//
//  EndFocusSessionParameter.swift
//  Open-Jellycore
//
//  Created by Taylor Lineman on 6/02/23.
//

struct EndFocusSessionParameter: ParameterProtocol, Codable {
	var markAsComplete: JellyBoolean?


    static func build(call: [FunctionCallParameterItem], scopedVariables: [Variable]) -> ParameterProtocol {
        var parameters = EndFocusSessionParameter()

        if let value = call.first(where: { node in return node.slotName == "markAsComplete" }) {
            parameters.markAsComplete = JellyBoolean(parameterItem: value, scopedVariables: scopedVariables)
        } else {
            ErrorReporter.shared.reportError(error: .missingParameter(function: "endFocusSession", name: "markAsComplete"), node: nil)
        }

        return parameters
    }
     
    static func getDefaultValues() -> [String: String] {
        return [
			"markAsComplete": "true",

        ]
    }
}