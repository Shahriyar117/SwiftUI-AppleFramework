//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Dev on 11/02/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    @State private var isShowingSafariView = false
    
    var framework : Framework
    @Binding var isShowingDetailedView: Bool
    
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {isShowingDetailedView = false}, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }).padding()
                }
                 
                Spacer()
                FrameworkTitleView(framework: framework)
                Text(framework.description)
                    .font(.body)
                    .padding()
                Spacer()
                Button(action: { isShowingSafariView = true }, label: {
                    AFButton(title: "Learn More")
                })
                .fullScreenCover(isPresented: $isShowingSafariView) {
                    SafariView(url: URL(string: framework.urlString) ??
                               URL(string: "www.apple.com")!)
                }
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,
                        isShowingDetailedView: .constant(true)).preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
