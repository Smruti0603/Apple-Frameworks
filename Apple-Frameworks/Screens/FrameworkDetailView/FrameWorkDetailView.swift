//
//  FrameWorkDetailView.swift
//  Apple-Frameworks
//
//  Created by smruti on 05/02/25.
//

import SwiftUI

struct FrameWorkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    var body: some View {
        VStack{
            HStack{
                Spacer()
                
                XDissmissButton(isShowingDetailView: $isShowingDetailView)
                
                
                
            }
            
            .padding()

            Spacer()
            FrameworkTitle(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
                
            }label: {
                AFButton(title: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
                
                
            })
        }
    }
}

#Preview {
    FrameWorkDetailView(framework:MockData.sampleFramework, isShowingDetailView: .constant(false))
    
}
