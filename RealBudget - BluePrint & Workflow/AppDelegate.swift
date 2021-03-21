//
//  AppDelegate.swift
//  RealBudget - BluePrint & Workflow
//
//  Created by Kevin Taniguchi on 3/19/21.
//

import UIKit
import Workflow
import WorkflowUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let containerViewController = ContainerViewController<LongRangeViewStateUpdate.Output, LongRangeScreen>(workflow: LongRangeViewStateUpdate())
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = containerViewController
        window?.makeKeyAndVisible()
        
        return true
    }
}

///// Drives view controllers from a root Workflow.
//public final class ContainerViewController<Output, ScreenType>: UIViewController where ScreenType: Screen {
//
//    /// Emits output events from the bound workflow.
//    public let output: Signal<Output, Never>
//
//    public convenience init<W: Workflow>(workflow: W) where W.Rendering == ScreenType, W.Output == Output
//}
