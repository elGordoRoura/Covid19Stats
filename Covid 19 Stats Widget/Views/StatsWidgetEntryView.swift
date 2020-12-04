//
//  StatsWidgetEntryView.swift
//  Covid 19 Stats WidgetExtension
//
//  Created by Christopher J. Roura on 11/6/20.
//

import SwiftUI
import WidgetKit

struct StatsWidgetEntryView: View {
    
    let entry: TotalCaseEntry
    
    @Environment(\.widgetFamily) var family

    
    var body: some View {
        switch family {
            case .systemSmall:
                StatsWidgetSmall(entry: entry)
            case .systemLarge:
                StatsWidgetLarge(entry: entry)
            default:
                StatsWidgetMedium(entry: entry)
        }
    }
}


struct StatsWidgetEntryView_Previews: PreviewProvider {
    static var previews: some View {
        StatsWidgetEntryView(entry: TotalCaseEntry.stub)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
