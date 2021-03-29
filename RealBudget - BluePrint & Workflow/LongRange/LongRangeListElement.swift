//
//  LongRangeListElement.swift
//  RealBudget - BluePrint & Workflow
//
//  Created by Kevin Taniguchi on 3/21/21.
//

import BlueprintUI
import BlueprintUICommonControls
import Foundation

struct LongRangeListElement: ProxyElement {
    var forecasts: [Forecast] = []
    var screen: LongRangeScreen
    
    init(screen: LongRangeScreen) {
        self.screen = screen
    }
    
    var elementRepresentation: Element {
        // blueprint version of a v-stack
        Column {  column in
            for forecast in screen.forecasts {
                let itemelement = LongRangeItemElement(
                    forecast: forecast,
                    balance: "0"
                )
                column.add(child: itemelement)
            }
        }
    }
}

// row in tableview
struct LongRangeItemElement: ProxyElement {
    var forecast: Forecast
    var balance: String
    
    var elementRepresentation: Element {
        // blueprint version of a h-stack
        Row { row in
            row.horizontalUnderflow = .spaceEvenly
            
            let occurrenceLabel = Label(text: RBDateFormatter.shared.formatter.string(from: forecast.date))
            let balanceLabel = Label(text: "\(forecast.balance)")
            
            row.add(child: occurrenceLabel)
            row.add(child: balanceLabel)
        }
    }
}
