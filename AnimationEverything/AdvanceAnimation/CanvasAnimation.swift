//
//  CanvasAnimation.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/11/25.
//

import SwiftUI

struct CanvasAnimation: View {
    @State private var progress: Double = 0
    
    var body: some View {
        VStack {
            TimelineView(.animation) { timeline in
                let now = timeline.date.timeIntervalSinceReferenceDate
                let animatedProgress = (now.truncatingRemainder(dividingBy: 2)) / 2 * 2 // value from 0 to 2
                
                Canvas { context, size in
                    for i in 0..<8 {
                        let angle = Double(i) * .pi / 4
                        let startAngle = Angle(radians: angle)
                        let endAngle = Angle(radians: angle + (.pi * animatedProgress))
                        
                        var arcPath = Path()
                        arcPath.addArc(
                            center: CGPoint(x: size.width / 2, y: size.height / 2),
                            radius: 50,
                            startAngle: startAngle,
                            endAngle: endAngle,
                            clockwise: false
                        )
                        
                        context.stroke(arcPath, with: .color(.blue), lineWidth: 3)
                    }
                }
                .frame(height: 200)
            }
        }
        .padding()
    }
}


#Preview {
    CanvasAnimation()
}
