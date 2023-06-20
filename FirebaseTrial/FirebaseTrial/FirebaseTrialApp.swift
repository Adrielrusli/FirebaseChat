//
//  FirebaseTrialApp.swift
//  FirebaseTrial
//
//  Created by Adriel Bernard Rusli on 20/06/23.
//

import SwiftUI
import Firebase

@main
struct FirebaseTrialApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
