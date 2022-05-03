//
//  ContentView.swift
//  GridSwiftUI
//
//  Created by naresh kukkala on 03/05/22.
//

import SwiftUI

struct ContentView: View {
    
    //let columns = [GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100))]
    
    /*
    let columns = [GridItem(.flexible(minimum: 50)),
                      GridItem(.flexible(minimum: 50)),
                      GridItem(.flexible(minimum: 50)),
                      GridItem(.flexible(minimum: 50)),
                      GridItem(.flexible(minimum: 50)),
                      GridItem(.flexible(minimum: 50))
    ] */
    
    
    let columns = [
           GridItem(.adaptive(minimum: 100)),
           GridItem(.adaptive(minimum: 100))
       ]
    
    var body: some View {
        
        LazyVGrid(columns: columns, content: {
            ForEach(1...20, id: \.self) { index in
                HStack {
                    Text("Item \(index)")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                }
            }
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView().previewLayout(.fixed(width: 480, height: 320))
        }
    }
}

