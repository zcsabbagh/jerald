//
//  api-configurations.swift
//  test-gpt
//
//  Created by Zane Sabbagh on 10/9/23.
//

import Foundation
import OpenAI
import ElevenlabsSwift

let elevenApi = ElevenlabsSwift(elevenLabsAPI: "b68b360de1d80e4cc8430a6a9bc04de4")
let config = OpenAI.Configuration(token: "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", organizationIdentifier: "org-eLi8lax12wDHqF4H2gc5qCkV")
let openAI = OpenAI(configuration: config)
