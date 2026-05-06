//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Anthony Perez on 5/5/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageString = ""
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            
            Button("Press Me!") {
                let message1 = "Yoou are Awesome!"
                let message2 = "You are Great!"
                let imageString1 = "hand.thumbsup"
                let imageString2 = "sun.max.fill"
                
//                if message == message1 {
//                    message = message2
//                    imageString = imageString2
//                } else {
//                    message = message1
//                    imageString = imageString1
//                }
                message = (message == message1 ? message2 : message1)
                imageString = (imageString == imageString1 ? imageString2 : imageString1)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
// print(person == "Limor" ? "Hello, Lady Ada" : "Hello, There!")
