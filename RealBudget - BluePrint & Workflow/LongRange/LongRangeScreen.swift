//
//  LongRangeScreen.swift
//  RealBudget - BluePrint & Workflow
//
//  Created by Kevin Taniguchi on 3/21/21.
//

import Foundation
import Workflow
import WorkflowUI

// screen is a workflow UI concept
struct LongRangeScreen: Screen {
    var forecasts: [Forecast]
    
    init(forecasts: [Forecast]) {
        self.forecasts = forecasts
    }
    
    func viewControllerDescription(environment: ViewEnvironment) -> ViewControllerDescription {
        LongRangeViewController.description(for: self, environment: environment)
    }
}
