//
//  DetailFrameworkView.swift
//  Apple-Frameworks
//
//  Created by Lee Sangoroh on 13/05/2026.
//

import SwiftUI

struct DetailFrameworkView: View {
    
    let framework = MockData.sampleFramework
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            
            Spacer()
            
            FrameWorkTitleView(framework: framework)
            FrameWorkDescriptionView(framework: framework)
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Read More")
            }
        }
    }
}

#Preview {
    DetailFrameworkView()
}

struct FrameWorkDescriptionView: View {
    let framework: Framework
    
    var body: some View {
 
        Text(framework.description)
            .font(.body)
            .padding()
    }
}
