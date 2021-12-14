//
//  circles_zoom.swift
//  coolanimations
//
//  Created by Rudraansh Dhoot on 14/12/2021.
//

import SwiftUI

struct circles_zoom: View {
    @State private var shouldAnimate = false
        
        var body: some View {
                HStack {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 20, height: 20)
                        .scaleEffect(shouldAnimate ? 1.0 : 0.5)
                        .animation(Animation.easeInOut(duration: 0.5).repeatForever())
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 20, height: 20)
                        .scaleEffect(shouldAnimate ? 1.0 : 0.5)
                        .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.3))
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 20, height: 20)
                        .scaleEffect(shouldAnimate ? 1.0 : 0.5)
                        .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.6))
                }.navigationTitle("circles(zoom)")
                .onAppear {
                    self.shouldAnimate = true
            }
        }
}

struct circles_zoom_Previews: PreviewProvider {
    static var previews: some View {
        circles_zoom()
    }
}
