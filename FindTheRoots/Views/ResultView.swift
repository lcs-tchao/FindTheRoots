//
//  ContentView.swift
//  FindTheRoots
//
//

import SwiftUI

struct ResultView: View{
    
    //MARk: stored properties
    let somePriorRsult: Result
    
    // MARK: compputed properties
    var body: some View{
        VStack(spacing: 10) {
            
            //Input Values
            HStack(){
                Text("a:")
                Text("\(somePriorRsult.a.formatted(.number.precision(.fractionLength(1))))")
                Spacer()
                    .frame(width: 30)
                Text("b:")
                Text("\(somePriorRsult.b.formatted(.number.precision(.fractionLength(1))))")
                Spacer()
                    .frame(width: 30)
                Text("c:")
                Text("\(somePriorRsult.c.formatted(.number.precision(.fractionLength(1))))")
                
                
            }
                // output
                
                Text(somePriorRsult.roots)
                    .font(Font.custom("Times New Roman", size: 20.0, relativeTo: .body))
                    
      
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 15)
    }
}

    
   

    



#Preview {
    ResultView(somePriorRsult: resultForPreviews)
}
