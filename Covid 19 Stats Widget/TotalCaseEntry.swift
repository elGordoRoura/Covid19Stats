//
//  TotalCaseEntry.swift
//  Covid 19 Stats WidgetExtension
//
//  Created by Christopher J. Roura on 11/6/20.
//

import Foundation
import WidgetKit

struct TotalCaseEntry: TimelineEntry {
    var date: Date
    
    let totalCount: TotalCaseCount
    let isPlaceHolder = false
}


extension TotalCaseEntry {
    static var stub: TotalCaseEntry {
        TotalCaseEntry(date: Date(), totalCount: .init(title: "Global", confirmed: 200, death: 10, recovered: 100))
    }
    
    
    static var placeholder: TotalCaseEntry {
        TotalCaseEntry(date: Date(), totalCount: .init(title: "-", confirmed: 0, death: 0, recovered: 0))
    }
}
