//
//  DataStore.swift
//  SpringAnimationApp
//
//  Created by Igor Guryan on 09.02.2025.
//

import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
