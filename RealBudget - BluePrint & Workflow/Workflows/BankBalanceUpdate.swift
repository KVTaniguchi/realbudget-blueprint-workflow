//
//  BankBalanceUpdate.swift
//  RealBudget - BluePrint & Workflow
//
//  Created by Kevin Taniguchi on 3/19/21.
//

import Foundation
import Workflow

// updates db with a new bank balance
struct BankBalanceUpdate: Workflow {
    var balance: Double
    
    init(balance: Double) {
        self.balance = balance
    }

    func makeInitialState() -> Double {
        return 0.0
    }
    
    func workflowDidChange(from previousWorkflow: BankBalanceUpdate, state: inout Double) {
        print("balance: ")
        print(previousWorkflow.balance)
    }
    
    func render(state: Double, context: RenderContext<BankBalanceUpdate>) -> Double {
        1.0
    }
}
