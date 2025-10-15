//
//  LoadingAnimation.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/15/25.
//

import SwiftUI

struct LoadingAnimation: View {
    
    @State private var loading = true
    
    var body: some View {
        
        VStack{
            
            ZStack{
                
                Circle()
                    .stroke(Color.black.opacity(0.3),lineWidth: 4)
                    .frame(width: 100, height: 100)
                
                Circle()
                    .trim(from: 0, to: 0.7)
                    .stroke(Color.blue,lineWidth: 4)
                    .frame(width: 100, height: 100)
                    .rotationEffect(.degrees(loading ? 360 : 0))
                    .animation(.linear(duration: 1).repeatForever(autoreverses: false),value: loading)
                
            }
            
            
            Text("Loading...")
            
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation(.easeOut){
                    loading = false
                }
                
            }
        }
    }
}

#Preview {
    LoadingAnimation()
}
