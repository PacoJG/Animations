//
//  LoaderView.swift
//  Animations
//
//  Created by Francisco Jaime on 17/05/22.
//

import UIKit
import Lottie

class LoaderView {
    
    var animationView: AnimationView?
    
    init(animationName: String){
        animate(animationName: animationName)
    }
    
    func animate(animationName: String){
        self.animationView = .init(name: animationName)
        self.animationView?.frame = CGRect(x: 0, y:0, width: 400, height: 400)
        //animationView.center = self.center
        self.animationView?.loopMode = .loop
        self.animationView?.animationSpeed = 0.5
        self.animationView?.contentMode = .scaleAspectFill
        //self.addSubview(animationView)
        self.animationView?.play()
        //animationView.translatesAutoresizingMaskIntoConstraints = false
        //animationView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        //animationView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        //animationView.widthAnchor.constraint(equalToConstant: 280).isActive = true
        //animationView.heightAnchor.constraint(equalToConstant: 108).isActive = true
    }
    
}
