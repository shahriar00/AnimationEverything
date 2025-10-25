//
//  SuccessCheckMark.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/25/25.
//

import SwiftUI

struct SuccessCheckMark: View {
    
    @State private var isAnimated : Bool = false
    
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.green)
                    .scaleEffect(isAnimated ? 0.0 : 1.0)
                
                Image(systemName: "checkmark")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(Color.white)
                    .scaleEffect(isAnimated ? 1.0 : 0.0)
            }
            .onAppear {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.0)){
                    isAnimated = true
                }
            }
            
            
            Text("Success")
                .font(Font.largeTitle.bold())
                .lineLimit(1)
                .foregroundColor(Color.green)
                .opacity(isAnimated ? 1.0 : 0.0)
        }
        .padding()
    }
}

#Preview {
    SuccessCheckMark()
}
