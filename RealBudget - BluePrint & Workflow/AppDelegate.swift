//
//  AppDelegate.swift
//  RealBudget - BluePrint & Workflow
//
//  Created by Kevin Taniguchi on 3/19/21.
//

import CoreData
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
        let containerViewController = ContainerViewController<LongRangeViewStateUpdate.Output, LongRangeScreen>(workflow: LongRangeViewStateUpdate(moc: persistentContainer.viewContext))
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = containerViewController
        window?.makeKeyAndVisible()
        
        return true
    }
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "FinancialState")
        container.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to load persistent stores: \(error)")
            }
        }
        return container
    }()
}
