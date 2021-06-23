//
//  ContentView.swift
//  Instafilter
//
//  Created by Arkasha Zuev on 23.06.2021.
//

import SwiftUI

struct ContentView1: View {
    @State private var blurAmout: CGFloat = 0
    
    var body: some View {
        let blur = Binding<CGFloat>(
            get: {
                self.blurAmout
            }, set: {
                self.blurAmout = $0
                print("New value is \(self.blurAmout)")
            }
        )
        
        return VStack {
            Text("Hello")
                .blur(radius: blurAmout)
            
            Slider(value: blur, in: 0...20)
        }
    }
}

struct ContentView: View {
    @State private var showingActionSheet = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        Text("Hello")
            .frame(width: 300, height: 300)
            .background(backgroundColor)
            .onTapGesture {
                self.showingActionSheet = true
            }
            .actionSheet(isPresented: $showingActionSheet) {
                ActionSheet(title: Text("Change background"), message: Text("Select a new color"), buttons: [
                    .default(Text("Red")) { self.backgroundColor = .red },
                    .default(Text("Green")) { self.backgroundColor = .green },
                    .default(Text("Blue")) { self.backgroundColor = .blue },
                    .cancel()
                ])
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
