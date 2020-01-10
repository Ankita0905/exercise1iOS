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
       moveClockwise()
        
    }
    
    func moveCounterClockwise()
    {
        self.imageView.frame.origin.y = self.space.bounds.minY
                self.imageView.frame.origin.x = self.space.bounds.minX
                
                   
        UIView.animate(withDuration: 1, animations: {
                   
                    if self.imageView.frame.origin.y == self.space.bounds.minY && self.imageView.frame.origin.x == self.space.bounds.minX
                    {
        //            print(self.space.bounds.minX)
        //            print(self.space.bounds.minY)
                    self.imageView.frame.origin.y += self.space.bounds.height - self.imageView.bounds.height
                        
                        
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
                            },completion: {(true) in
                                self.moveCounterClockwise()
                            })
                        })
                        
                    })
                })
    }
    
    func moveClockwise()
    {
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
                            },completion: {(true) in
                                self.moveClockwise()
                            })
                        })
                        
                    })
                })
    }

    }




