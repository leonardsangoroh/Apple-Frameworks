//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Lee Sangoroh on 12/05/2026.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = DetailFrameworkViewModel()
    
    var body: some View {
        NavigationView() {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                DetailFrameworkView(framework: viewModel.selectedFramework ?? MockData.frameworks.first!, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }

    }
}

#Preview {
    FrameworkGridView()
        //.preferredColorScheme(.dark)
}
