//
//  MyCalenderSwiftUIApp.swift
//  MyCalenderSwiftUI
//
//  Created by 황석현 on 2022/12/19.
//

import SwiftUI

@main
struct MyCalenderSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            let dateHolder = DateHolder()
            ContentView()
                .environmentObject(dateHolder)
        }
    }
}
