//
//  ViewController.swift
//  RealBudget - BluePrint & Workflow
//
//  Created by Kevin Taniguchi on 3/19/21.
//

import BlueprintUICommonControls
import BlueprintUI
import UIKit
import Workflow
import WorkflowUI

// who updates the database?
// who reads the database?

struct LongRangeScreen: Screen {
    var forecasts: [Forecast]
    
    init(forecasts: [Forecast]) {
        self.forecasts = forecasts
    }
    
    func viewControllerDescription(environment: ViewEnvironment) -> ViewControllerDescription {
        LongRangeViewController.description(for: self, environment: environment)
    }
}

class LongRangeViewController: ScreenViewController<LongRangeScreen> {
    // what displays views in a reusable tableview?
    
    required init(screen: LongRangeScreen, environment: ViewEnvironment) {
        super.init(screen: screen, environment: environment)
    }
//      required init(screen: DemoScreen, environment: ViewEnvironment) {
//            button = UIButton()
//            super.init(screen: screen, environment: environment)
//
//            update(screen: screen)
//        }
    
    let rootElement = Row { row in
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func screenDidChange(from previousScreen: LongRangeScreen, previousEnvironment: ViewEnvironment) {
        
    }
}

//Spacer()
//Text("\(RBDateFormatter.shared.formatter.string(from: forecast.date))")
//CenterLineEyeView(isCurrentWeek: forecast.isCurrentWeek)
//.alignmentGuide(.centerLine) { d in d[VerticalAlignment.center] }
//Text("\(forecast.balance)")
//Spacer()

struct LongRangeItemElement: ProxyElement {
    var forecast: Forecast
    var balance: String
    
    var elementRepresentation: Element {
        Row { row in
            row.horizontalUnderflow = .spaceEvenly
            
            let occurrenceLabel = Label(text: RBDateFormatter.shared.formatter.string(from: forecast.date))
            let balanceLabel = Label(text: "\(forecast.balance)")
            
            row.add(child: occurrenceLabel)
            row.add(child: balanceLabel)
        }
    }
}
