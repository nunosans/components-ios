//
//  Gestures.swift
//  Components
//
//  Created by Nuno Coelho Santos on 8/8/22.
//

import SwiftUI

struct Gestures: View {
    @State private var cardDragAmount = CGSize.zero
    
    let letters = Array("Hello, SwiftUI")
    @State private var lettersEnabled = false
    @State private var lettersDragAmount = CGSize.zero
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .cornerRadius(10)
            .offset(cardDragAmount)
            .gesture(
                DragGesture()
                    .onChanged {
                        cardDragAmount = $0.translation
                    }
                    .onEnded { _ in
                        withAnimation {
                            cardDragAmount = .zero
                        }
                    }
            )
        
        HStack(spacing: -1) {
            ForEach(0..<letters.count) { number in
                Text(String(letters[number]))
                    .padding(5)
                    .font(.title)
                    .foregroundColor(lettersEnabled ? .blue : .red)
                    .offset(lettersDragAmount)
                    .animation(
                        .default.delay(Double(number) / 20),
                        value: lettersDragAmount
                    )
            }
        }
        .gesture(
            DragGesture()
                .onChanged {
                    lettersDragAmount = $0.translation
                }
                .onEnded { _ in
                    lettersDragAmount = .zero
                    lettersEnabled.toggle()
                }
        )

    }
}

struct Gestures_Previews: PreviewProvider {
    static var previews: some View {
        Gestures()
    }
}
