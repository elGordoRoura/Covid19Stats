//
//  PieChartCell.swift
//  Covid19 Stats
//
//  Created by Christopher J. Roura on 11/5/20.
//

import SwiftUI

struct PieSlice: Identifiable {
    var id = UUID()
    var startDeg: Double
    var endDeg: Double
    var value: Double
    var normalizedValue: Double
    var color: Color
}


public struct PieChartCell : View {
    
    @State private var show:Bool = false
    
    var rect: CGRect
    
    var radius: CGFloat {
        return min(rect.width, rect.height)/2
    }
    
    var startDeg: Double
    var endDeg: Double
    
    var path: Path {
        var path = Path()
        path.addArc(center:rect.mid , radius:self.radius, startAngle: Angle(degrees: self.startDeg), endAngle: Angle(degrees: self.endDeg), clockwise: false)
        path.addLine(to: rect.mid)
        path.closeSubpath()
        return path
    }
    
    var index: Int
    var backgroundColor:Color
    var accentColor:Color
    
    var lineWidth: CGFloat {
        #if os(watchOS)
        return 0.4
            #else
        return 2
            #endif
    }
    
    
    public var body: some View {
        path
            .fill()
            .foregroundColor(self.accentColor)
            .overlay(path.stroke(self.backgroundColor, lineWidth: self.lineWidth))
            .scaleEffect(self.show ? 1 : 0)
            .animation(Animation.spring().delay(Double(self.index) * 0.04))
            .onAppear(){
                self.show = true
        }
    }
}


extension CGRect {
    var mid: CGPoint {
        return CGPoint(x:self.midX, y: self.midY)
    }
}
