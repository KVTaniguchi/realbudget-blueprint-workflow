//
//  LongRangeViewController.swift
//  RealBudget - BluePrint & Workflow
//
//  Created by Kevin Taniguchi on 3/28/21.
//

import BlueprintUICommonControls
import BlueprintUI
import UIKit
import Workflow
import WorkflowUI

class LongRangeViewController: ScreenViewController<LongRangeScreen> {
    var blueprintView: BlueprintView {
        BlueprintView(element: LongRangeListElement(screen: screen))
    }
    
    required init(screen: LongRangeScreen, environment: ViewEnvironment) {
        super.init(screen: screen, environment: environment)
    }
    
    override func loadView() {
        self.view = blueprintView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
    
    override func screenDidChange(
        from previousScreen: LongRangeScreen,
        previousEnvironment: ViewEnvironment
    ) {
        print("screen did change")
    }
}
