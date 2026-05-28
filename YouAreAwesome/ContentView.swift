//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Anthony Perez on 5/5/26.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var message = ""   // Sring Data Type
    @State private var imageName = ""  // String Data Type
//    @State private var imageNumber = 0  // Int Data Type of Whole Numbers
//    @State private var messageNumber = 0
    @State private var lastMessageNumber = -1 // lastMessageNumber will never be -1
    @State private var lastImageNumber = -1
    @State private var lastSoundNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    let numberOfImages = 10 // images labeled image0 - image 9
    let numberOfSounds = 6 // sounds labeled sound0 - sound5
    
    var body: some View {
        
        VStack {
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Spacer()
            
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
                
                lastMessageNumber = nonRepeatingRandom(lastNumber: lastMessageNumber, upperBound: messages.count-1)
                message = messages[lastMessageNumber]
                
                lastImageNumber = nonRepeatingRandom(lastNumber: lastImageNumber, upperBound: numberOfImages-1)
                imageName = "image\(lastImageNumber)"
                
                
                lastSoundNumber = nonRepeatingRandom(lastNumber: lastSoundNumber, upperBound: numberOfSounds-1)
                playSound(soundName: "sound\(lastSoundNumber)")
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
    }
    
    func nonRepeatingRandom(lastNumber: Int, upperBound: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperBound)
        } while newNumber == lastNumber
        return newNumber
    }
    
    func playSound(soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("😡 could not read file named \(soundName)")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("😡 ERROr: \(error.localizedDescription) creating audioPlayer")
        }
    }
}

#Preview {
    ContentView()
}

