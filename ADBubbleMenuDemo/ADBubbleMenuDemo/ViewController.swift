//
//  ViewController.swift
//  ADBubbleMenuDemo
//
//  Created by Aniruddha Das on 1/23/17.
//  Copyright © 2017 Aniruddha Das. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var upMenuView: ADBubbleMenuButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        
        // Create up menu button
        if upMenuView == nil {
            
            let homeLabel2 =  self.createHomeButtonView()
            upMenuView = ADBubbleMenuButton(frame: CGRect(x: self.view.frame.size.width - homeLabel2.frame.size.width - 30.0, y: self.view.frame.size.height - homeLabel2.frame.size.height - 50.0,
                                                          width: homeLabel2.frame.size.width, height: homeLabel2.frame.size.height), expansionDirection: .directionUp)
            upMenuView.homeButtonView = homeLabel2
            upMenuView.addButtons(self.createDemoButtonArray())
            self.view.addSubview(upMenuView)
        }
    }
    
    func createHomeButtonView() -> UILabel {
        let label = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: 40.0, height: 40.0))
        label.layer.cornerRadius = label.frame.size.height / 2.0
        let button = UIButton(frame: CGRect(x: 0.0, y: 0.0, width: 40.0, height: 40.0))
        button.layer.cornerRadius = button.frame.size.height / 2.0
        button.setBackgroundImage(UIImage(named: "fab_icon"), for: .normal)
        label.addSubview(button)
        return label
    }
    
    func createDemoButtonArray() -> [UIButton] {
        var buttons: [UIButton]=[]
        var i = 0
        for str in ["help screen_mail_icon", "help screen_call_icon"] {
            let button: UIButton = UIButton(type: UIButtonType.custom)
            button.setBackgroundImage(UIImage(named: str), for: .normal)
            button.frame = CGRect(x: 0.0, y: 0.0, width: 40.0, height: 40.0)
            button.contentMode = .scaleAspectFit
            button.layer.cornerRadius = button.frame.size.height / 2.0
            i += 1
            button.tag = i
            button.addTarget(self, action: #selector(self.buttonTap(_:)), for: UIControlEvents.touchUpInside)
            buttons.append(button)
        }
        return buttons
    }
    
    func buttonTap(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            print("Mail Pressed")
        case 2:
            print("Call Pressed")
        default: break
            
        }
    }

}

