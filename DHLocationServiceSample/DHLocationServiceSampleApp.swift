//
//  DHLocationServiceSampleApp.swift
//  DHLocationServiceSample
//
//  Created by David Hu on 5/11/23.
//

import SwiftUI
import DHLocationService

@main
struct DHLocationServiceSampleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @ObservedObject var locationService = DHLocationService()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    locationService.requestAuthorization()
                }
        }
    }
}
