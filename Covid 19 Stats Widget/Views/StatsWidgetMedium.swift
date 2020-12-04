//
//  StatsWidgetMedium.swift
//  Covid 19 Stats WidgetExtension
//
//  Created by Christopher J. Roura on 11/6/20.
//

import SwiftUI
import WidgetKit

struct StatsWidgetMedium: View {

    let entry: TotalCaseEntry
    

    var body: some View {
        VStack(spacing: 0) {
            TitleDateHeader(title: entry.totalCount.title, date: entry.date)
                .padding(.vertical, 4)
                .padding(.horizontal)
            
            CaseStatGrid(totalCount: entry.totalCount)
        }
        .redacted(reason: entry.isPlaceHolder ? .placeholder : .init())
    }
}


struct StatsWidgetMedium_Previews: PreviewProvider {
    static var previews: some View {
        StatsWidgetMedium(entry: TotalCaseEntry.stub)
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
