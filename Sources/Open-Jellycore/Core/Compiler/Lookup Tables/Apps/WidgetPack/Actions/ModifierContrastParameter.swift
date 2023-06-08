//
//  ModifierContrastParameter.swift
//  Open-Jellycore
//
//  Created by Taylor Lineman on 6/02/23.
//

struct ModifierContrastParameter: ParameterProtocol, Codable {
	var contrast: JellyDouble?
	var view: Jelly_View?


    static func build(call: [FunctionCallParameterItem], scopedVariables: [Variable]) -> ParameterProtocol {
        var parameters = ModifierContrastParameter()

        if let value = call.first(where: { node in return node.slotName == "contrast" }) {
            parameters.contrast = JellyDouble(parameterItem: value, scopedVariables: scopedVariables)
        } else {
            ErrorReporter.shared.reportError(error: .missingParameter(function: "modifierContrast", name: "contrast"), node: nil)
        }
        if let value = call.first(where: { node in return node.slotName == "view" }) {
            parameters.view = Jelly_View(parameterItem: value, scopedVariables: scopedVariables)
        } else {
            ErrorReporter.shared.reportError(error: .missingParameter(function: "modifierContrast", name: "view"), node: nil)
        }

        return parameters
    }
     
    static func getDefaultValues() -> [String: String] {
        return [
			"contrast": "0.8",
			"view": "View(identifier: \"View1\", displayString: \"View One\")",

        ]
    }
}
