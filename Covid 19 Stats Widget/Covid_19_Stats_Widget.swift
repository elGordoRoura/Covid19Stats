//
//  Covid_19_Stats_Widget.swift
//  Covid 19 Stats Widget
//
//  Created by Christopher J. Roura on 11/6/20.
//

import WidgetKit
import SwiftUI

@main
struct Covid_19_Stats_Widget: Widget {
    
    let kind: String = "Covid_19_Stats_Widget"

    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: GlobalTotalStatsTimelineProvider()) { entry in
            StatsWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Covid19 Stats")
        .description("Show latest global lifetime stats")
    }
}


struct Covid_19_Stats_Widget_Previews: PreviewProvider {
    static var previews: some View {
        StatsWidgetEntryView(entry: TotalCaseEntry.stub)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
