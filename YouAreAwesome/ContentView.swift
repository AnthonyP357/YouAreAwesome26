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
//    @State private var imageNumber = 0  // Int Data Type of Whole Numbers
//    @State private var messageNumber = 0
    @State private var lastMessageNumber = -1 // lastMessageNumber will never be -1
    @State private var lastImageNumber = -1
    
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
                
                // generate a random messageNumber to use as an index
                // if messageNumber == lastMessageNumber {
                //    keep generating a new random messageNumber
                //    until you get a messageNumber != lastMessageNumber
                // set messageString to messages[messageNumber]
                // update the lastMessageNumber with messageNumber
                
//                var messageNumber = Int.random(in: 0...messages.count-1)
//                while messageNumber == lastMessageNumber {
//                    messageNumber = Int.random(in: 0...messages.count-1)
//                }
//                message = messages[messageNumber]
//                lastMessageNumber = messageNumber
                
                var messageNumber: Int
                repeat {
                    messageNumber = Int.random(in: 0...messages.count-1)
                } while messageNumber == lastMessageNumber
                message = messages[messageNumber]
                lastMessageNumber = messageNumber 

                
                // TODO: -Update the imageName variable-
                var imageNumber = Int.random(in: 0...9)
                while imageNumber == lastImageNumber {
                    imageNumber = Int.random(in: 0...9)
                }
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
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
