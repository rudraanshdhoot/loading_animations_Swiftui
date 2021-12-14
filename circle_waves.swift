//
//  circle_waves.swift
//  coolanimations
//
//  Created by Rudraansh Dhoot on 14/12/2021.
//

import SwiftUI

struct circle_waves: View {
    @State private var shouldAnimate = false
        
        var body: some View {
            Circle()
                .fill(Color.yellow)
                .frame(width: 30, height: 30)
                .overlay(
                    ZStack {
                        Circle()
                            .stroke(Color.yellow, lineWidth: 100)
                            .scaleEffect(shouldAnimate ? 1 : 0)
                        Circle()
                            .stroke(Color.purple, lineWidth: 100)
                            .scaleEffect(shouldAnimate ? 1.5 : 0)
                        Circle()
                            .stroke(Color.red, lineWidth: 100)
                            .scaleEffect(shouldAnimate ? 2 : 0)
                    }
                    .opacity(shouldAnimate ? 0.0 : 0.2)
                    .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: false))
            )
            .onAppear {
                self.shouldAnimate = true
            }
        }
}
struct circle_waves_Previews: PreviewProvider {
    static var previews: some View {
        circle_waves()
    }
}
