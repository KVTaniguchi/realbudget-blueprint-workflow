//
//  CurrentStateListElement.swift
//  RealBudget - BluePrint & Workflow
//
//  Created by Kevin Taniguchi on 3/28/21.
//

import BlueprintUI
import BlueprintUICommonControls
import Foundation

struct CurrentStateElement: ProxyElement {
    var screen: CurrentStateScreen
    
    var elementRepresentation: Element {
        // blueprint version of a h-stack
        Row { row in
            row.horizontalUnderflow = .spaceEvenly
            
            let titleLabel = Label(text: "current balance:")
            let balanceLabel = Label(text: "\(screen.balance)")
            row.add(child: titleLabel)
            row.add(child: balanceLabel)
        }
    }
}
