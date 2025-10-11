//
//  GestureAnimation.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/11/25.
//

import SwiftUI

struct GestureAnimation: View {
    
    @State private var scale = CGFloat(1.0)
    
    @State private var offset = CGFloat(0)
    
    var body: some View {
       
        VStack {
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
                .cornerRadius(10)
                .scaleEffect(scale)
                .gesture(
                    LongPressGesture(minimumDuration: 0.5)
                        .onChanged { _ in
                            withAnimation(.spring()) {
                                scale = 1.5
                            }
                        }
                        .onEnded { _ in
                            withAnimation(.spring()) {
                                scale = 1.0
                            }
                        }
                )
            
            Spacer()
                .frame(height: 100)
            
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .offset(x: offset)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.spring()){
                                offset = value.translation.width
                            }
                        }
                        .onEnded { _ in
                            withAnimation(.spring(response: 0.4, dampingFraction: 0.7)){
                                offset = 0
                                
                            }
                        }
                    )
        }
    }
}

#Preview {
    GestureAnimation()
}
