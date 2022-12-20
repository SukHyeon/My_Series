//
//  MyCalendarSwiftUIApp.swift
//  MyCalendarSwiftUI
//
//  Created by 황석현 on 2022/12/20.
//

import SwiftUI

@main
struct MyCalendarSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            let dateHolder = DateHolder()
            ContentView()
                .environmentObject(dateHolder)
        }
    }
}
