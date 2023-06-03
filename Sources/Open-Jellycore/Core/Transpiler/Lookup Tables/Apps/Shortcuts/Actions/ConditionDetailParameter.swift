//
//  ConditionDetailParameter.swift
//  Open-Jellycore
//
//  Created by Taylor Lineman on 6/02/23.
//

struct ConditionDetailParameter: ParameterProtocol, Codable {
	var detail: Jelly_WFContentItemPropertyName?
	var WFInput: JellyVariableReference?


    static func build(call: [FunctionCallParameterItem], scopedVariables: [Variable]) -> ParameterProtocol {
        var parameters = ConditionDetailParameter()

        if let value = call.first(where: { node in return node.slotName == "detail" }) {
            parameters.detail = Jelly_WFContentItemPropertyName(value, scopedVariables: scopedVariables)
        } else {
            ErrorReporter.shared.reportError(error: .missingParameter(function: "conditionDetail", name: "detail"), node: nil)
        }
        if let variableCall = call.first(where: { node in return node.slotName == "condition" }) {
            if let variable = scopedVariables.first(where: { variable in
                return variable.name == variableCall.content
            }) {
                parameters.WFInput = JellyVariableReference(variable, scopedVariables: scopedVariables)
            } else {
                ErrorReporter.shared.reportError(error: .variableDoesNotExist(variable: variableCall.content), node: nil)
            }
        } else {
            ErrorReporter.shared.reportError(error: .missingParameter(function: "conditionDetail", name: "condition"), node: nil)
        }

        return parameters
    }
     
    // Need to loop through all properties to build the documentation.
    static func getDefaultValues() -> [String: String] {
        return [
			"detail": "Location",
			"condition": "Current Weather",

        ]
    }
}