//
//  ContentViewController.swift
//  FlyoutStatusBarDemo
//
//  Created by Ivan Blagajić on 31/05/16.
//  Copyright © 2016 Ivan Blagajić. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    var root: ViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Menu", style: .Done, target: root, action: #selector(ViewController.toggleMenu))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
