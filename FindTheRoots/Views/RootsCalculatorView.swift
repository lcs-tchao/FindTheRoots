//
//  ContentView.swift
//  FindTheRoots
//
//  Created by 曾梓恒 on 2025-01-14.
//

import SwiftUI

struct RootsCalculatorView: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                Image("quadratic")
                    .resizable()
                    .frame(width: 300, height: 220)
                    .navigationTitle("Find the Roots")
                Spacer()
                
            }
        }
    }
}

#Preview {
    RootsCalculatorView()
}
