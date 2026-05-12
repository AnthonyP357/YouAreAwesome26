//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Anthony Perez on 5/5/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""   // Sring Data Type
    @State private var imageName = ""  // String Data Type
    @State private var imageNumber = 0  // Int Data Type of Whole Numbers
    @State private var messageNumber = 0
    
    var body: some View {
        
        VStack {
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
                
            
            
            Spacer()
            
            Button("Show Message!") {
                let messages = ["This Is The Place!",
                                "You Are Awesome!",
                                "You Are Great!",
                                "Fabulous? That's You Great Photo!",
                                "You Are Fantastic!",
                                "When The Genius Bar Needs Help, They Call You!",
                                "Looking Good!",
                                "Working Hard Developing!",
                                "So Beautiful"]
                
                message = messages[Int.random(in: 0...messages.count-1)]

                
                // TODO: -Update the imageName variable-
                imageName = "image\(Int.random(in: 0...9))"
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
// print(person == "Limor" ? "Hello, Lady Ada" : "Hello, There!")
// Changes done
