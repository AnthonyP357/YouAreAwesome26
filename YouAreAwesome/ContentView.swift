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
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("Show Message!") {
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"
//                if message == message1 {
//                    message = message2
//                    imageString = imageString2
//                } else {
//                    message = message1
//                    imageString = imageString1
//                }
                message = (message == message1 ? message2 : message1)
//               imageName = (imageName == "image0" ? "image1" : "image0")
                
                // TODO: -Update the imageName variable-
                imageName = "image\(imageNumber)"
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
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
