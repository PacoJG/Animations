//
//  ViewController.swift
//  Animations
//
//  Created by Francisco Jaime on 17/05/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    var tmpAnimation: AnimationView?

    var segmentControl = UISegmentedControl(items: ["Anim1", "Anim2", "Anim3"])
    
    //
    
    @objc func handleSegmentedControlValueChanged(_ sender: UISegmentedControl!){
        
        tmpAnimation?.removeFromSuperview()
        switch segmentControl.selectedSegmentIndex{
        case 0:
            let animationBox = LoaderView(animationName: "boxing")
            animationBox.animationView?.frame.size = CGSize(width: 400, height: 400)
            animationBox.animationView?.center = self.view.center
            tmpAnimation = animationBox.animationView!
            view.backgroundColor = .blue
        case 1:
            let animationDog = LoaderView(animationName: "moody-dog")
            animationDog.animationView?.frame.size = CGSize(width: 400, height: 400)
            animationDog.animationView?.center = self.view.center
            tmpAnimation = animationDog.animationView!
            view.backgroundColor = .cyan
        case 2:
            let animationCloud = LoaderView(animationName: "cloud-angry")
            animationCloud.animationView?.frame.size = CGSize(width: 400, height: 400)
            animationCloud.animationView?.center = self.view.center
            tmpAnimation = animationCloud.animationView!
            view.backgroundColor = .red
        default:
            break
        }
        
        self.view.addSubview(tmpAnimation!)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentControl.frame = CGRect(x: 10, y: 40, width:self.view.bounds.width - 20, height: 30)
        segmentControl.selectedSegmentIndex = UISegmentedControl.noSegment
        segmentControl.addTarget(self, action: #selector(handleSegmentedControlValueChanged(_:)), for: .valueChanged)
        view.addSubview(segmentControl)
        // Do any additional setup after loading the view.
        
        //let segmentedControl = UISegmentedControl (items: ["Anim1","Anim2","Anim3"])
        //segmentedControl.frame = CGRect(x: 10, y: 40, width:self.view.bounds.width - 20, height: 30)
        //self.view.addSubview(segmentedControl)
       
    }
    
        /*if sender.selectedSegmentIndex == 0{
            animation.animationName = "boxing"
            animation.frame.size = CGSize(width: 400, height: 400)
            animation.center = self.view.center
            view.addSubview(animation)
            view.backgroundColor = .blue
        }
        else if sender.selectedSegmentIndex == 1{
            animation.animationName = "moody-dog"
            animation.frame.size = CGSize(width: 400, height: 400)
            animation.center = self.view.center
            view.addSubview(animation)
            view.backgroundColor = .red
        }
        else if sender.selectedSegmentIndex == 2{
            animation.animationName = "cloud-angry"
            animation.frame.size = CGSize(width: 400, height: 400)
            animation.center = self.view.center
            view.addSubview(animation)
            view.backgroundColor = .cyan
        }*/
    

}

