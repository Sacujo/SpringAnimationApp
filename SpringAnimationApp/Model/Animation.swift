//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Igor Guryan on 09.02.2025.
//

struct Animation {
    let preset: String
    let curve: String
    let duration: Double
    let force: Double
    let delay: Double
    
    var discription: String {
        """
        Preset: \(preset)
        Curve: \(curve)
        Duration: \(String(format: "%.02f", duration))
        Force: \(String(format: "%.02f", force))
        Delay: \(String(format: "%.02f", delay))
        """
    }
    
    static var randomAnimation: Animation {
        Animation(
            preset: DataStore.shared.presets.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easyOut",
            duration: Double.random(in: 1...2),
            force: Double.random(in: 1...2),
            delay: Double.random(in: 0...1)
        )
    }
        
}
