//
//  DateScrollerView.swift
//  MyCalendarSwiftUI
//
//  Created by 황석현 on 2022/12/20.
//

import SwiftUI

struct DateScrollerView: View
{
    @EnvironmentObject var dateHolder: DateHolder
    
    var body: some View {
        
        HStack
        {
            Spacer()
            Button(action: previousMonth)
            {
                Image(systemName: "arrow.left")
                    .imageScale(.large)
                    .font(Font.title.weight(.bold))
            }
            Text(calendarHelper().monthYearString(dateHolder.date))
                .font(.title)
                .bold()
                .animation(.none)
                .frame(maxWidth: .infinity)
            Button(action: nextMonth)
            {
                Image(systemName: "arrow.right")
                    .imageScale(.large)
                    .font(Font.title.weight(.bold))
            }
            Spacer()
        }
    }
    
    func previousMonth()
    {
        dateHolder.date = calendarHelper().minusMonth(dateHolder.date)
    }
    
    func nextMonth()
    {
        dateHolder.date = calendarHelper().plusMonth(dateHolder.date)
    }
}

struct DateScrollerView_Previews: PreviewProvider {
    static var previews: some View {
        DateScrollerView()
    }
}
