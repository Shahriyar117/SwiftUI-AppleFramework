//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Dev on 11/02/2024.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
