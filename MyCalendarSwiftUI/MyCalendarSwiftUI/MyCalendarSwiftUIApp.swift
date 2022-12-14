//
//  MyCalendarSwiftUIApp.swift
//  MyCalendarSwiftUI
//
//  Created by íŠėí on 2022/12/20.
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
