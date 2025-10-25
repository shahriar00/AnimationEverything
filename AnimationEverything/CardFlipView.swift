//
//  CardFlipView.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/25/25.
//

import SwiftUI

struct CardFlipView: View {
    
    @State private var isFlipped: Bool = false
    
    var body: some View {
        
        VStack{
            ZStack{
                
                if !isFlipped {
                    Rectangle()
                        .fill(Color.red)
                        .cornerRadius(20)
                        .frame(width: 200, height: 200)
                        .shadow(color: Color.black.opacity(0.2), radius: 10)
                        .padding()
                }else{
                    Rectangle()
                        .fill(Color.green)
                        .cornerRadius(20)
                        .frame(width: 200, height: 200)
                        .shadow(color: Color.black.opacity(0.2), radius: 10)
                        .padding()
                    
                    Rectangle()
                        .fill(Color.green)
                        .cornerRadius(20)
                        .frame(width: 200, height: 200)
                        .shadow(color: Color.black.opacity(0.2), radius: 10)
                        .padding()
                }
            }
            .rotation3DEffect(.degrees(isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
            .onTapGesture {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0)){
                    isFlipped.toggle()
                }
            }
            
            ZStack{
                
                Rectangle()
                    .fill(Color.orange)
                    .cornerRadius(20)
                    .frame(width: 200, height: 200)
                    .rotationEffect(.degrees(isFlipped ? 45 : 0))
                    .offset(x: isFlipped ? 40 : 0)
                    .shadow(color: Color.black.opacity(0.2), radius: 10)
                    .padding()
                
                Rectangle()
                    .fill(Color.purple)
                    .cornerRadius(20)
                    .frame(width: 200, height: 200)
                    .rotationEffect(.degrees(isFlipped ? -45 : 0))
                    .offset(x: isFlipped ? -40 : 0)
                    .shadow(color: Color.black.opacity(0.2), radius: 10)
                    .padding()
                
                Rectangle()
                    .fill(Color.gray)
                    .cornerRadius(20)
                    .frame(width: 200, height: 200)
                    .shadow(color: Color.black.opacity(0.2), radius: 10)
                    .padding()
                    .onTapGesture {
                        
                        withAnimation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0)){
                            isFlipped.toggle()
                        }
                        
                    }
            }
        }
    }
}

#Preview {
    CardFlipView()
}
