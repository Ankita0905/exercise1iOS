//
//  ViewController.swift
//  exercise1iOS
//
//  Created by Ankita Jain on 2020-01-09.
//  Copyright © 2020 Ankita Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 5, animations: {
            self.imageView.frame.origin.y+=750
        }, completion: nil)
//        UIView.animate(withDuration: 5, animations: {
//            self.imageView.frame.origin.x+=1000
//        }, completion: nil)
        
    }
//        imageView.center=CGRect(origin: imageView.frame.origin, size: imageView!.frame)
//                      UIView.animate(withDuration: 2) {
//                          self.imageView.center=CGPoint(x: self.imageView.center.x+1000, y: self.imageView.center.y)
        
        // Do any additional setup after loading the view.
    }




