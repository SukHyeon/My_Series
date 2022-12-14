//
//  ContentView.swift
//  MyCalendarSwiftUI
//
//  Created by íŠėí on 2022/12/20.
//

import SwiftUI

struct ContentView: View
{
    @EnvironmentObject var dateHolder: DateHolder
    
    var body: some View {
        
        VStack(spacing: 1)
        {
            DateScrollerView()
                .environmentObject(dateHolder)
                .padding()
            dayOfWeekStack
            calendarGrid
        }
    }
    
    var dayOfWeekStack: some View
    {
        HStack(spacing: 1)
        {
            Text("Sun").dayOfWeek()
            Text("Mon").dayOfWeek()
            Text("Tue").dayOfWeek()
            Text("Wed").dayOfWeek()
            Text("Thu").dayOfWeek()
            Text("Fri").dayOfWeek()
            Text("Sat").dayOfWeek()
        }
    }
    
    var calendarGrid: some View
    {
        VStack(spacing: 1)
        {
            let daysInMonth = calendarHelper().daysInMonth(dateHolder.date)
            let firstDayOfMonth = calendarHelper().firstOfMonth(dateHolder.date)
            let startingSpaces = calendarHelper().weekDay(firstDayOfMonth)
            let prevMonth = calendarHelper().minusMonth(dateHolder.date)
            let daysInPrevMonth = calendarHelper().daysInMonth(prevMonth)
            
            ForEach(0..<6)
            {
                row in
                HStack(spacing: 1)
                {
                    ForEach(1..<8)
                    {
                        column in
                        let count = column + (row * 7)
                        CalendarCell(count: count, startingSpaces: startingSpaces, daysInMonth: daysInMonth, daysInPrevMonth: daysInPrevMonth)
                            .environmentObject(dateHolder)
                    }
                }
            }
        }
        .frame(maxHeight: .infinity)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Text
{
    func dayOfWeek() -> some View
    {
        self.frame(maxWidth: .infinity)
            .padding(.top, 1)
            .lineLimit(1)
    }
}
