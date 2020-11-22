//
//  StatsWidgetSmall.swift
//  Covid 19 Stats WidgetExtension
//
//  Created by Christopher J. Roura on 11/6/20.
//

import SwiftUI
import WidgetKit

struct StatsWidgetSmall: View {
    let entry: TotalCaseEntry
    
    var body: some View {
        VStack(spacing: 0) {
            TitleDateHeader(title: entry.totalCount.title, date: entry.date)
                .padding(.vertical, 4)
                .padding(.horizontal)
            
            CaseStatView(text: "Confirmed", totalCountText: entry.totalCount.confirmedText, color: confirmedColor)
            CaseStatView(text: "Death", totalCountText: entry.totalCount.deathText, color: deathColor)
            CaseStatView(text: "Recovered", totalCountText: entry.totalCount.recoveredText, color: recoveredColor)
        }
        .redacted(reason: entry.isPlaceHolder ? .placeholder : .init())
    }
}

struct StatsWidgetSmall_Previews: PreviewProvider {
    static var previews: some View {
        StatsWidgetSmall(entry: TotalCaseEntry.placeholder)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
