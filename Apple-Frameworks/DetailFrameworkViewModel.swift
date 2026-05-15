//
//  DetailFrameworkViewModel.swift
//  Apple-Frameworks
//
//  Created by Lee Sangoroh on 14/05/2026.
//

import SwiftUI
internal import Combine

final class DetailFrameworkViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
