//
//  ContentView.swift
//
//  Created by Rushil Parikh New on 2/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color.orange)
                .edgesIgnoringSafeArea(.all)
            
            Text("Welcome to MeDS!")
                .fontWeight(.black)
                .foregroundColor(Color.white)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 400, height: 100)
                .background(Color.orange)
                .position(x: 195, y: 130)
                .font(.largeTitle)
            
            Button("Connect", action: {
                
            })
            
            .foregroundColor(.white)
            .position(x: 200, y: 400)
            .font(.largeTitle)
            
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
