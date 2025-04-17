//
//  ContentView.swift
//  StandUpTimer
//
//  Created by Shah Md Imran Hossain on 17/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Stand Up Timer")
                .font(.title2.bold())
                .padding()
            
            GeometryReader { proxy in
                // MARK: - Timer Ring
                ZStack{
                    Circle()
                        .fill(.white.opacity(0.03))
                        .padding(-40)
                    
                    Circle()
                        .stroke(Color.gray.opacity(0.3), lineWidth: 20)
                    
                    Circle()
                        .trim(from: 0, to: 0.75)
                        .stroke(Color.blue, lineWidth: 20)
                        .rotationEffect(.degrees(-90))
                        .animation(.easeInOut(duration: 1), value: 0.75)
                    
                    Text("45%")
                        .font(.largeTitle.bold())
                        .foregroundColor(.blue)
                        .frame(width: proxy.size.width, height: proxy.size.height)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
