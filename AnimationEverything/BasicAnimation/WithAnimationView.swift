//
//  WithAnimationView.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/11/25.
//

import SwiftUI

struct WithAnimationView: View {
    
    @State private var scale: CGFloat = 1.0
    
    @State private var opacity: Double = 1.0
    
    var body: some View {
        
        VStack{
            Button("Animate"){
                withAnimation(.easeInOut(duration: 1.0)){
                    self.scale = self.scale == 1.0 ? 2.0 : 1.0
                    self.opacity = self.opacity == 1.0 ? 0.5 : 1.0
                }
            }
            .padding()
            
            Spacer()
                .frame(height: 100)

            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                .cornerRadius(15)
                .scaleEffect(scale)
                .opacity(opacity)
        }
    }
}

#Preview {
    WithAnimationView()
}
