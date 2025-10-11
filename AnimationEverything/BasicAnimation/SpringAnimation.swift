//
//  SpringAnimation.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/11/25.
//

import SwiftUI

struct SpringAnimation: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        
        //MARK: Spring Animation: bouncing feel....
        
//        response: How quickly the animation starts (lower = faster)
        
//        dampingFraction: How bouncy it is (0.0 = very bouncy, 1.0 = no bounce)
        
//        blendDuration: Animation blend time
        
        
        VStack{
            Button("Press me"){
                withAnimation(.spring(response: 0.3, dampingFraction: 0.5,blendDuration: 0)){
                    isAnimating.toggle()
                }
            }
            
            Spacer()
                .frame(height: 100)
            
            Rectangle()
                .fill(isAnimating ? Color.blue : Color.red)
                .frame(width: 100, height: 100)
                .cornerRadius(15)
                .scaleEffect(isAnimating ? 1.5 : 1)
        }
        
    }
}

#Preview {
    SpringAnimation()
}
