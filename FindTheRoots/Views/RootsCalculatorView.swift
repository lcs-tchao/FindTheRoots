//
//  ContentView.swift
//  FindTheRoots
//
//  Created by 曾梓恒 on 2025-01-14.
//

import SwiftUI

struct RootsCalculatorView: View {
    
    //Stored
    @State private var a: Double = 1.0
    @State private var b: Double = -6.0
    @State private var c: Double = 8.0
    
    // List of prior results
    @State var priorResults: [Result] = []
    
    
    
    //Computed properties
    var result: String {
        let discriminant = b * b - 4 * a * c
        //Check for negative discriminant
        if discriminant < 0 {
            return "No real roots."
        } else {
            let x1 = ( b * -1 - discriminant.squareRoot() ) / (2 * a)
            let x2 = ( b * -1 + discriminant.squareRoot() ) / (2 * a)
            
            return "x ≈ \(x1.formatted(.number.precision(.fractionLength(2)))) and x ≈ \(x2.formatted(.number.precision(.fractionLength(2))))"
        }
    }
    
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
                
                Text(result)
                    .font(Font.custom("Times New Roman",
                                      size: 24.0,
                                      relativeTo: .body))
                Button(
                    action: {
                        let latestResult = Result(
                            a: a,
                            b: b,
                            c: c,
                            roots: result)
                        priorResults.append(latestResult)
                        
                    },
                    label: {
                        Text("Save Result")
                    })
                .buttonStyle(.bordered)
                .padding()
                
                
                //History label
                HStack{
                    Text("History")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                
                //The actual list of result
                
                List(priorResults.reversed()) { currentResult in
            HStack{
                    Spacer()
                    ResultView(somePriorRsult:  currentResult)
                    Spacer()
                }
            }
                
              

                Spacer()
            }
            .padding()
        }
    }
}



#Preview {
    RootsCalculatorView()
}
