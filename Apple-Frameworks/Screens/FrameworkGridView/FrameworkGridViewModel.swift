//
//  FramewordGridViewModel.swift
//  Apple-Frameworks
//
//  Created by smruti on 06/02/25.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selecetdFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published  var isShowingDetailView = false
}


