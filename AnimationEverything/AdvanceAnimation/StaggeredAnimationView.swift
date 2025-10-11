//
//  StaggeredAnimationView.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/11/25.
//

import SwiftUI

struct StaggeredAnimationView: View {
    
    @State private var isAnimate: Bool = false
    
    let delayIncrement: Double = 0.1
    
    var body: some View {
        
        
        VStack {
            
            Button("Animate"){
                isAnimate.toggle()
            }
            .padding()
            
            Spacer()
            .frame(height: 100)
            
            ForEach(0..<5) { index in
                ZStack {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                        .offset(x: 0, y:isAnimate ? -50 : 0)
                        .opacity(self.isAnimate ? 1 : 0)
                        .animation(.easeInOut(duration: 0.5).delay(Double(index) * self.delayIncrement),value: isAnimate)
                }
            }
        }
    }
}

#Preview {
    StaggeredAnimationView()
}
