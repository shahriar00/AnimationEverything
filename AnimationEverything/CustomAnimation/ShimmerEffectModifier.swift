//
//  ShimmerEffectModifier.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/13/25.
//

import SwiftUI

struct ShimmerEffectModifier: ViewModifier {
    
    var progress : CGFloat = 0.0
    
    var animatableData: CGFloat {
        get {
            self.progress
        }  set {
            progress = newValue
        }
    }
    func body(content: Content) -> some View {
        content
            .overlay(LinearGradient(
                gradient: Gradient(colors: [
                    .clear,
                    .white.opacity(0.3),
                    .clear
                ]),
                startPoint: .leading,
                endPoint: .trailing
            ).offset(x: -200+((self.progress-0.5)*400)))
    }
}

extension View {
    func shimmer() -> some View {
        modifier(ShimmerEffectModifier())
            .onAppear {
                var transaction = Transaction(animation: .linear(duration: 2).repeatForever(autoreverses: false))
                transaction.disablesAnimations = true
                withTransaction(transaction) {
                    
                }
            }
    }
}
