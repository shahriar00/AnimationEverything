//
//  CombinedTransition.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/11/25.
//

import SwiftUI

struct CombinedTransition: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        
        VStack{
            
            Button("Press"){
                withAnimation(.easeInOut(duration: 1)){
                    isOn.toggle()
                }
            }
            .foregroundColor(Color.white)
            .font(.system(size: 20,weight: .medium))
            .padding()
            .background(Color.red)
            .cornerRadius(10)
            
            if isOn {
                Text("Combined Transition")
                    .font(Font.largeTitle)
                    .fontWeight(Font.Weight.black)
                    .lineLimit(nil)
                    .padding()
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading).combined(with: .opacity),
                        removal: .move(edge: .trailing).combined(with: .opacity)
                    ))
            }
        }
    }
}

#Preview {
    CombinedTransition()
}
