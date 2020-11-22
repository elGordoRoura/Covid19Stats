//
//  ContentView.swift
//  Covid19 Stats
//
//  Created by Christopher J. Roura on 11/5/20.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    var body: some View {
        Button("Reload Timelines") {
            WidgetCenter.shared.reloadAllTimelines()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
