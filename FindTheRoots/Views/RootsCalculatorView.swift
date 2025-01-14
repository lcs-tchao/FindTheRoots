//
//  ContentView.swift
//  FindTheRoots
//
//  Created by 曾梓恒 on 2025-01-14.
//

import SwiftUI

struct RootsCalculatorView: View {
    @State private var a: Double = 1.0
    @State private var b: Double = -6.0
    @State private var c: Double = 8.0
        
    var body: some View {
        NavigationStack {
            VStack {
                Image("quadratic")
                    .resizable()
                    .frame(width: 300, height: 220)
                    .navigationTitle("Find the Roots")
                
                // Display the coefficient values
                HStack {
                    VStack {
                        Text("a: \(a.formatted(.number.precision(.fractionLength(1))))")
                            .font(Font.custom("Times New Roman",
                                              size: 24.0,
                                              relativeTo: .body))
                            .padding()
                        Slider(value: $a, in: -100...100, step: 1)
                    }
                    VStack {
                        Text("b: \(b.formatted(.number.precision(.fractionLength(1))))")
                            .font(Font.custom("Times New Roman",
                                              size: 24.0,
                                              relativeTo: .body))
                            .padding()
                        Slider(value: $b, in: -100...100, step: 1)
                    }
                    VStack {
                        Text("c: \(c.formatted(.number.precision(.fractionLength(1))))")
                            .font(Font.custom("Times New Roman",
                                              size: 24.0,
                                              relativeTo: .body))
                            .padding()
                        Slider(value: $c, in: -100...100, step: 1)
                    }
                }
                
                Text("x ≈ 2.00 and x ≈ 4.00")
                    .font(Font.custom("Times New Roman",
                                      size: 24.0,
                                      relativeTo: .body))
                
                Spacer()
            }
            .padding()
        }
    }
}



#Preview {
    RootsCalculatorView()
}
