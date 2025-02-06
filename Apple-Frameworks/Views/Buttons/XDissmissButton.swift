//
//  XDissmissButton.swift
//  Apple-Frameworks
//
//  Created by smruti on 06/02/25.
//

import SwiftUI

struct XDissmissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        Button{
            isShowingDetailView = false
            
        }label :{
            Image(systemName: "xmark")
                .foregroundColor(Color(.label))
                .imageScale(.large)
                .frame(width:44, height: 44)
            
        }
    }
}

#Preview {
    XDissmissButton(isShowingDetailView: .constant(false))
}
