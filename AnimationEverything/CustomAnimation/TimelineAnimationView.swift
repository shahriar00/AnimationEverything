//
//  TimelineAnimationView.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/14/25.
//

import SwiftUI

struct TimelineAnimationView: View {
    var body: some View {
        TimelineView(.periodic(from: .now, by: 0.016)) { timeline in
            let seconds = timeline.date.timeIntervalSinceReferenceDate
            let rotation = seconds.truncatingRemainder(dividingBy: 2) * 180
            
            VStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .rotationEffect(Angle(degrees: rotation))
            }
        }
        .padding()
    }
}

struct TimelineAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineAnimationView()
    }
}


