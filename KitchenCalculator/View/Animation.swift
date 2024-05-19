//
//  Animation.swift
//  KitchenCalculator
//
//  Created by Jedi on 16.05.2024.
//

import SwiftUI

struct AnimatedBackground: View {

    @State var start = UnitPoint(x: 0, y: -2)
    @State var end = UnitPoint(x: 4, y: 0)
    
    let timer = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    let colors = [Color.blue, Color.purple, Color.pink, Color.yellow]
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: colors), startPoint: start, endPoint: end)
//            .withAnimation(Animation.easeInOut(duration: 6).repeatForever())
            .onReceive(timer, perform: { _ in
                            self.start = UnitPoint(x: 4, y: 0)
                            self.end = UnitPoint(x: 0, y: 2)
                            self.start = UnitPoint(x: -4, y: 20)
                            self.start = UnitPoint(x: 4, y: 0)
                        })
        
        
        
//            .animation(Animation.easeInOut(duration: 6)
//                .repeatForever()
//            ).onReceive(timer, perform: { _ in
//                self.start = UnitPoint(x: 4, y: 0)
//                self.end = UnitPoint(x: 0, y: 2)
//                self.start = UnitPoint(x: -4, y: 20)
//                self.start = UnitPoint(x: 4, y: 0)
//            })
    }
}
