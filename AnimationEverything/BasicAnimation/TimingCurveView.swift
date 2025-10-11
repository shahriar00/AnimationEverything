//
//  TimingCurveView.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/11/25.
//

import SwiftUI

struct TimingCurveView: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        
        VStack{
            
            Toggle("Is Active", isOn: $isActive)
                .padding()
            
            // Linear: Constant Speed
            
            Rectangle()
                .frame(width: isActive ? 200 : 100, height: isActive ? 200 : 100)
                .cornerRadius(20)
                .animation(.linear(duration: 0.5),value: isActive)
            
            // easeIn: slow start , fast end
            
            Rectangle()
                .foregroundColor(isActive ? Color.purple : Color.red)
                .frame(width: isActive ? 200 : 100, height: isActive ? 200 : 100)
                .cornerRadius(20)
                .animation(.easeIn(duration: 0.5),value: isActive)
            
            
            // easeOut: fast start, slow end
            
            Rectangle()
                .frame(width: isActive ? 200 : 100, height: isActive ? 200 : 100)
                .foregroundColor(isActive ? Color.green : Color.yellow)
                .cornerRadius(20)
                .animation(.easeOut(duration: 0.5),value: isActive)
            
            //easeInOut: accelaration and decelation
            
            Rectangle()
                .frame(width: isActive ? 200 : 100, height: isActive ? 200 : 100)
                .foregroundColor(isActive ? Color.gray : Color.indigo)
                .cornerRadius(20)
                .animation(.easeInOut(duration: 0.5),value: isActive)
        }
    }
}

#Preview {
    TimingCurveView()
}
