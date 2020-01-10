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
    @IBOutlet weak var space: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.imageView.frame.origin.y = self.space.bounds.minY
                self.imageView.frame.origin.x = self.space.bounds.minX
                
                   
        UIView.animate(withDuration: 1, animations: {
                   
                    if self.imageView.frame.origin.y == self.space.bounds.minY && self.imageView.frame.origin.x == self.space.bounds.minX
                    {
        //            print(self.space.bounds.minX)
        //            print(self.space.bounds.minY)
                    self.imageView.frame.origin.y += self.space.bounds.height - self.imageView.bounds.height
                        print(self.space.bounds.height - self.imageView.bounds.height)
                        print(self.imageView.frame.origin.y)
                        print("\n")
                        print( self.imageView.frame.origin.x)
                        
                    }
                  
                
                
                },completion:{ (true) in
                    UIView.animate(withDuration: 1, animations: {
                        if self.imageView.frame.origin.y == self.space.bounds.height - self.imageView.bounds.height && self.imageView.frame.origin.x == self.space.bounds.minX
                                  {
                                                self.imageView.frame.origin.x += self.space.bounds.width - self.imageView.bounds.width
                                            }
                    },completion: {
                        (true) in
                        UIView.animate(withDuration: 1, animations: {
                            if self.imageView.frame.origin.y == self.space.bounds.height - self.imageView.bounds.height && self.imageView.frame.origin.x == self.space.bounds.width - self.imageView.bounds.width
                                      {
                                        self.imageView.frame.origin.y -= self.space.bounds.height - self.imageView.bounds.height
                                                }
                        },completion:{
                            (true) in
                            UIView.animate(withDuration: 1, animations: {
                                if self.imageView.frame.origin.y == self.space.bounds.minY && self.imageView.frame.origin.x == self.space.bounds.width - self.imageView.bounds.width
                                          {
                                                        self.imageView.frame.origin.x -= self.space.bounds.width - self.imageView.bounds.width
                                                    }
                            },completion: nil)
                        })
                        
                    })
                })
//        UIView.animate(withDuration: 5, animations: {
//            self.imageView.frame.origin.x+=1000
//        }, completion: nil)
        
    }
//        imageView.center=CGRect(origin: imageView.frame.origin, size: imageView!.frame)
//                      UIView.animate(withDuration: 2) {
//                          self.imageView.center=CGPoint(x: self.imageView.center.x+1000, y: self.imageView.center.y)
        
        // Do any additional setup after loading the view.
    }




