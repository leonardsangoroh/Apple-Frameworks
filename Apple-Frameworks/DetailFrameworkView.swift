//
//  DetailFrameworkView.swift
//  Apple-Frameworks
//
//  Created by Lee Sangoroh on 13/05/2026.
//

import SwiftUI

struct DetailFrameworkView: View {
    
    //let framework = MockData.sampleFramework
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            
            XDismissButtonView(isShowingDetailView: $isShowingDetailView)
            Spacer()
            
            FrameworkTitleView(framework: framework)
            FrameWorkDescriptionView(framework: framework)
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Read More")
            }
        }
        //.fullScreenCover()
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://apple.com")!)
        })
    }
}

#Preview {
    DetailFrameworkView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}

struct FrameWorkDescriptionView: View {
    let framework: Framework
    
    var body: some View {
 
        Text(framework.description)
            .font(.body)
            .padding()
    }
}
