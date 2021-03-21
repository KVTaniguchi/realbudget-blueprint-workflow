//
//  LongRangeViewStateUpdate.swift
//  RealBudget - BluePrint & Workflow
//
//  Created by Kevin Taniguchi on 3/19/21.
//

import Foundation
import SwiftUI
import Workflow

// updates the long range view with a new balance
// should also output the values we plug into it
// so it should generate a forecast
// should trigger when balance or events change
struct LongRangeViewStateUpdate: Workflow {
    typealias State = [Forecast]
    
    typealias Output = [Forecast]
    
    typealias Rendering = LongRangeScreen
    
    @FetchRequest(
        entity: RBState.entity(),
        sortDescriptors: []
    ) var state: FetchedResults<RBState>
    
    @FetchRequest(
        entity: RBEvent.entity(),
        sortDescriptors: []
    ) var events: FetchedResults<RBEvent>
    
    private var data: [Forecast] {
        guard let state = state.first else { return [] }
        return FinancialResource.forecast(state: state, events: events)
    }
    
    init() {}

    func makeInitialState() -> [Forecast] {
        []
    }
    
    func workflowDidChange(from previousWorkflow: LongRangeViewStateUpdate, state: inout [Forecast]) {
        
    }
    
    func render(state: [Forecast], context: RenderContext<LongRangeViewStateUpdate>) -> LongRangeScreen {
        LongRangeScreen(forecasts: state)
    }
}
