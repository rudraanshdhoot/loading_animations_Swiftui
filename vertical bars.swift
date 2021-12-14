//
//  vertical bars.swift
//  coolanimations
//
//  Created by Rudraansh Dhoot on 14/12/2021.
//

import SwiftUI

struct vertical_bars: View {
    @State private var shouldAnimate = false
        
        var body: some View {
                HStack(alignment: .center, spacing: shouldAnimate ? 15 : 5) {
                    Capsule(style: .continuous)
                        .fill(Color.red)
                        .frame(width: 10, height: 50)
                    Capsule(style: .continuous)
                        .fill(.purple)
                        .frame(width: 10, height: 30)
                    Capsule(style: .continuous)
                        .fill(Color.red)
                        .frame(width: 10, height: 50)
                    Capsule(style: .continuous)
                        .fill(Color.purple)
                        .frame(width: 10, height: 30)
                    Capsule(style: .continuous)
                        .fill(Color.red)
                        .frame(width: 10, height: 50)
                }.navigationTitle("vertical bars")
                .frame(width: shouldAnimate ? 150 : 100)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                .onAppear {
                    self.shouldAnimate = true
            }
        }
}
struct vertical_bars_Previews: PreviewProvider {
    static var previews: some View {
        vertical_bars()
    }
}
