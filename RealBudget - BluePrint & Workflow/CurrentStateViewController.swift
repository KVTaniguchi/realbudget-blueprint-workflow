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

struct TestScreen: Screen {
    func viewControllerDescription(environment: ViewEnvironment) -> ViewControllerDescription {
        TestScreenViewController.description(for: self, environment: environment)
    }
}

class TestScreenViewController: ScreenViewController<TestScreen> {
    override func screenDidChange(from previousScreen: TestScreen, previousEnvironment: ViewEnvironment) {
        
    }
}

class CurrentStateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

