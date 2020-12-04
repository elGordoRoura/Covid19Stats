//
//  CaseStatView.swift
//  Covid 19 Stats WidgetExtension
//
//  Created by Christopher J. Roura on 11/6/20.
//

import SwiftUI
import WidgetKit

let confirmedColor  = Color(red: 71/255, green: 97/255, blue: 244/255)
let deathColor      = Color(red: 244/255, green: 144/255, blue: 144/255)
let recoveredColor  = Color(red: 60/255, green: 213/255, blue: 152/255)
let sickColor       = Color(red: 253/255, green: 131/255, blue: 68/255)


struct CaseStatView: View {

    let text: String
    let totalCountText: String
    let color: Color
    var height: CGFloat? = nil
    

    var body: some View {
        VStack {
            Text(totalCountText)
                .font(.system(size: 16, weight: .semibold))
            Text(text)
                .font(.system(size: 12, weight: .regular))
        }
        .lineLimit(1)
        .minimumScaleFactor(0.7)
        .foregroundColor(.white)
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .frame(height: height)
        .background(color)
    }
}


struct CaseStatView_Previews: PreviewProvider {
    static var previews: some View {
        CaseStatView(text: "Confirmed", totalCountText: "100", color: confirmedColor)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
