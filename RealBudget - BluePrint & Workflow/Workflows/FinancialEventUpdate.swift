//
//  FinancialEventUpdate.swift
//  RealBudget - BluePrint & Workflow
//
//  Created by Kevin Taniguchi on 3/20/21.
//

import Foundation
import Workflow

// updates DB with a new/ changed financial event
struct FinancialEventStateUpdate: Workflow {
    var event: FinancialEvent
    
    init(event: FinancialEvent) {
        self.event = event
    }
    
    struct State {}

    func makeInitialState() -> State {
        State()
    }
    
    func workflowDidChange(from previousWorkflow: FinancialEventStateUpdate, state: inout State) {
        
    }
    
    func render(state: State, context: RenderContext<FinancialEventStateUpdate>) -> State {
        State()
    }
}
