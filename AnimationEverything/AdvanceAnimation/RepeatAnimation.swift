//
//  RepeatAnimation.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/11/25.
//

import SwiftUI

struct RepeatAnimation: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        
        VStack{
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .rotation3DEffect(.degrees(isAnimating ? 360 : 0), axis: (x: 0, y: 1, z: 0))
                .scaleEffect(isAnimating ? 1.5 : 1)
                .opacity(isAnimating ? 0.5 : 1)
                .onAppear{
                    withAnimation(.easeInOut(duration: 1).repeatForever()){
                        self.isAnimating.toggle()
                    }
                }
        }
        
    }
}

#Preview {
    RepeatAnimation()
}
