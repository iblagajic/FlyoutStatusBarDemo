//
//  ViewController.swift
//  FlyoutStatusBarDemo
//
//  Created by Ivan Blagajić on 31/05/16.
//  Copyright © 2016 Ivan Blagajić. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let nav: UINavigationController
    
    required init?(coder aDecoder: NSCoder) {
        let content = ContentViewController()
        nav = UINavigationController(rootViewController: content)
        super.init(coder: aDecoder)
        content.root = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(nav.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func toggleMenu() {
        UIView.animateWithDuration(0.5) {
            if self.nav.view.transform.tx == 0 {
                self.nav.view.transform.tx = self.view.frame.width-50
            } else {
                self.nav.view.transform = CGAffineTransformIdentity
            }
            self.setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    override func prefersStatusBarHidden() -> Bool {
        if nav.view.transform.tx == 0 {
            return false
        }
        return true
    }
    
    override func preferredStatusBarUpdateAnimation() -> UIStatusBarAnimation {
        return .Slide
    }

}

