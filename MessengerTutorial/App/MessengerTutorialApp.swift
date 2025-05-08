//
//  MessengerTutorialApp.swift
//  MessengerTutorial
//
//  Created by Shiv Prakash Gupta on 25/04/25.
//

import SwiftUI



//class AppDelegate: NSObject, UIApplicationDelegate {
//  func application(_ application: UIApplication,
//                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    FirebaseApp.configure()
//
//    return true
//  }
//}

@main
struct MessengerTutorialApp: App {
    //@UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
