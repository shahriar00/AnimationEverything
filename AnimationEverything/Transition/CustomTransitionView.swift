//
//  CustomTransitionView.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/11/25.
//

import SwiftUI

extension AnyTransition{
    
    static var asymmetric: AnyTransition {
        AnyTransition.move(edge: .leading).combined(with: .opacity)
    }
    
    static var customZoom: AnyTransition {
        AnyTransition.scale(scale: 0.0).animation(.easeInOut(duration: 1))
    }
    
    static var rotateAndScale: AnyTransition {
        AnyTransition.modifier(active: RotateAndScale(rotation: 180, scale: 0), identity: RotateAndScale(rotation: 0, scale: 1))
    }
}


struct RotateAndScale: ViewModifier {
    
    let rotation: Double
    
    let scale: CGFloat
    
    func body(content: Content) -> some View {
        content
            .rotation3DEffect(.degrees(rotation), axis: (x: 0, y: 1, z: 0))
            .scaleEffect(scale)
    }
}


struct CustomTransitionView: View {
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        
        
        Button("Custom Transition"){
            withAnimation(.easeInOut(duration: 1)){
                isPresented.toggle()
            }
        }
        .foregroundColor(Color.white)
        .font(.system(size: 20,weight: .medium))
        .padding()
        .background(Color.red)
        .cornerRadius(10)
        
        
        if isPresented {
            Text("Custom Transition Movement")
                .font(Font.system(size: 20,weight: .bold))
                .fontWeight(Font.Weight.black)
                .lineLimit(nil)
                .padding()
                .transition(.rotateAndScale)
        }
        
    }
}

#Preview {
    CustomTransitionView()
}
