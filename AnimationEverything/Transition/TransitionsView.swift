//
//  TransitionsView.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/11/25.
//

import SwiftUI

struct TransitionsView: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        
        VStack{
            
            Button("Toggle"){
                withAnimation(.easeInOut(duration: 1)){
                    isOn.toggle()
                }
            }
            .font(Font.system(size: 20,weight: .medium))
            .foregroundColor(Color.white)
            .padding()
            .background(Color.red)
            .cornerRadius(10)
            
            Spacer()
                .frame(height: 100)
            
            
            if isOn{
                
                // Slide view .
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    .transition(.slide)
                
                // up/down
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    .transition(.scale)
                
                // fade in/out
                
                Rectangle()
                    .fill(Color.pink)
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    .transition(.opacity)
            }
        }
    }
}

#Preview {
    TransitionsView()
}
