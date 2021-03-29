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

class CurrentStateViewController: ScreenViewController<CurrentStateScreen> {
    var blueprintView: BlueprintView {
        BlueprintView(element: CurrentStateElement(screen: screen))
    }
    
    required init(screen: CurrentStateScreen, environment: ViewEnvironment) {
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
        from previousScreen: CurrentStateScreen,
        previousEnvironment: ViewEnvironment
    ) {
        print("screen did change")
    }
}
