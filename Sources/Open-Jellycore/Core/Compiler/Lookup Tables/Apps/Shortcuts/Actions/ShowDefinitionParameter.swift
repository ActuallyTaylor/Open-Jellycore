//
//  ShowDefinitionParameter.swift
//  Open-Jellycore
//
//  Created by Taylor Lineman on 6/02/23.
//

struct ShowDefinitionParameter: ParameterProtocol, Codable {
	var Word: JellyString?


    static func build(call: [FunctionCallParameterItem], scopedVariables: [Variable]) -> ParameterProtocol {
        var parameters = ShowDefinitionParameter()

        if let value = call.first(where: { node in return node.slotName == "text" }) {
            parameters.Word = JellyString(parameterItem: value, scopedVariables: scopedVariables)
        } else {
            ErrorReporter.shared.reportError(error: .missingParameter(function: "showDefinition", name: "text"), node: nil)
        }

        return parameters
    }
     
    static func getDefaultValues() -> [String: String] {
        return [
			"text": "Cat",

        ]
    }
}