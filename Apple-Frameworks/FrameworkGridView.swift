//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Lee Sangoroh on 12/05/2026.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        FrameWorkTitleView(name: "Framework 1", imageName: "app-clip")
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameWorkTitleView : View {
    var name: String
    var imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit() // enable text to scale
                .minimumScaleFactor(0.6) // can scale to minimum of 60%
        }
    }
}
