//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Lee Sangoroh on 19/05/2026.
//

import SwiftUI

struct FrameworkTitleView : View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                //.lineLimit(1)
                .scaledToFit() // enable text to scale
                .minimumScaleFactor(0.6) // can scale to minimum of 60%
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.frameworks.first!)
}
