//
//  PulseModifier.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/12/25.
//

import SwiftUI

struct PulseModifier: ViewModifier {
    
    @State private var isActive: Bool = false
    
    let duration: Double
    
    func body(content: Content) -> some View {
        content
            .scaleEffect(isActive ? 1.5 : 1)
            .opacity(isActive ? 0.6 : 1)
            .onAppear {
                withAnimation(.easeInOut(duration: duration).repeatForever(autoreverses: true)){
                    isActive.toggle()
                }
            }
    }
}

extension View {
    func pulse(duration: Double) -> some View {
        self.modifier(PulseModifier(duration: duration))
    }
}


struct PulseModifierViews: View {
    var body: some View {
        Circle()
            .fill(Color.blue)
            .frame(width: 100, height: 100)
            .shadow(radius: 20)
            .pulse(duration: 1.5)
            .scaleEffect(1.5)
            .opacity(0.8)
    }
}

#Preview {
    PulseModifierViews()
}
