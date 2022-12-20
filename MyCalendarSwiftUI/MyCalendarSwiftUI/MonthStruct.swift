//
//  MonthStruct.swift
//  MyCalendarSwiftUI
//
//  Created by 황석현 on 2022/12/20.
//

import Foundation
import SwiftUI

struct MonthStruct
{
    var monthType: MonthType
    var dayInt: Int
    func day() -> String
    {
        return String(dayInt)
    }
}

enum MonthType
{
    case previous
    case Current
    case Next
}
