//
//  ViewController.swift
//  AnimationApp
//
//  Created by Дмитрий Олейнер on 12.01.2022.
//

import Spring

class ViewController: UIViewController {

// MARK: - IB Outlets
    @IBOutlet weak var parametersLable: UILabel!
    @IBOutlet weak var animationView: SpringView!


// MARK: Private Properties
    private var animation = Animation.getAnimation()

// MARK: - IB Actions

    @IBAction func runButtonPressed(_ sender: UIButton) {
        parametersLable.text = animation.description
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
        
    }
}
