//
//  StopWatchViewController.swift
//  medplus
//
//  Created by 丹羽遼吾 on 2018/08/13.
//  Copyright © 2018年 ryogo.niwa. All rights reserved.
//

import UIKit

class StopWatchViewController: UIViewController {
    
    
    @IBOutlet weak var timerDisplay: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    weak var timer: Timer!
    var startTime = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
    

    
    
    
}
