//
//  XDismissButtonView.swift
//  Apple-Frameworks
//
//  Created by Lee Sangoroh on 19/05/2026.
//

import SwiftUI

struct XDismissButtonView: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
    }
}

#Preview {
    XDismissButtonView(isShowingDetailView: .constant(true))
}
