//
//  StatsWidgetLarge.swift
//  Covid 19 Stats WidgetExtension
//
//  Created by Christopher J. Roura on 11/6/20.
//

import SwiftUI
import WidgetKit

struct StatsWidgetLarge: View {
    let entry: TotalCaseEntry
    
    var body: some View {
        VStack(spacing: 0) {
            CasePieRow(totalCount: entry.totalCount, date: entry.date)
            CaseStatGrid(totalCount: entry.totalCount)
        }
        .redacted(reason: entry.isPlaceHolder ? .placeholder : .init())
    }
}

struct StatsWidgetLarge_Previews: PreviewProvider {
    static var previews: some View {
        StatsWidgetLarge(entry: TotalCaseEntry.stub)
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
