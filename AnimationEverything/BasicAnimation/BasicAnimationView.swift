//
//  BasicAnimationView.swift
//  AnimationEverything
//
//  Created by Shahriar Islam Sazid on 10/11/25.
//

import SwiftUI

struct BasicAnimationView: View {
    
    @State private var isExpanded: Bool = false
    
    var body: some View {
        
        // here easeInOut animation create acceleration and deceleration
        
        VStack{
            
            Toggle("Expand", isOn: $isExpanded)
                .padding()
            
            
            Rectangle()
                .fill(isExpanded ? Color.orange : Color.blue)
                .frame(width: isExpanded ? 200 : 100, height: isExpanded ? 200 : 100)
                .cornerRadius(20)
                .animation(.easeInOut(duration: 0.5), value: isExpanded)
        }
        
    }
}

#Preview {
    BasicAnimationView()
}
