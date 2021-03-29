//
//  CurrentStateScreen.swift
//  RealBudget - BluePrint & Workflow
//
//  Created by Kevin Taniguchi on 3/28/21.
//

import Foundation
import Workflow
import WorkflowUI

struct CurrentStateScreen: Screen {
    var balance: String
    
    func viewControllerDescription(environment: ViewEnvironment) -> ViewControllerDescription {
        CurrentStateViewController.description(for: self, environment: environment)
    }
}
