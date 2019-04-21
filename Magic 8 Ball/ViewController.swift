//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by dan on 4/21/19.
//  Copyright © 2019 Neural. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var rollButton: UIImageView!
  
  func randomBall() {
    let ballNumber: Int = Int.random(in: 1...5)
    // pick a random ball
    rollButton.image =  UIImage(named: "ball\(ballNumber)")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    randomBall()
    
  }
  
  override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    randomBall()
  }


  @IBAction func askButton(_ sender: Any) {
    randomBall()
  }
  
}

