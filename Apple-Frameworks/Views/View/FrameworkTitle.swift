//
//  FrameworkTitle.swift
//  Apple-Frameworks
//
//  Created by smruti on 06/02/25.
//

import SwiftUI

struct FrameworkTitle: View {
    
    let framework: Framework

    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkTitle(framework: MockData.sampleFramework)
}
