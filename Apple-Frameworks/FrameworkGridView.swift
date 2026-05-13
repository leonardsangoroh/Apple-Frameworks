//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Lee Sangoroh on 12/05/2026.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView() {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameWorkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
        }

    }
}

#Preview {
    FrameworkGridView()
        //.preferredColorScheme(.dark)
}

struct FrameWorkTitleView : View {
    
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
