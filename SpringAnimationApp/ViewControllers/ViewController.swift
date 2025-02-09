//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Igor Guryan on 09.02.2025.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var springLabel: UILabel!
    
    private var animation = Animation.randomAnimation
    
    
    @IBAction func runAnimation(_ sender: UIButton) {
        
        springView.animation = animation.preset
        springView.force = animation.force
        springView.delay = animation.delay
        springView.duration = animation.duration
        springView.curve = animation.curve
        springView.animate()
        
        animation = Animation.randomAnimation
        
        springLabel.text = animation.discription
        
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springLabel.text = animation.discription
        
    }
    
    


}


