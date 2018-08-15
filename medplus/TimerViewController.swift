//
//  TimerViewController.swift
//  medplus
//
//  Created by 丹羽遼吾 on 2018/08/13.
//  Copyright © 2018年 ryogo.niwa. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

//    private var StartButton: UIButton!
//    private var TimerDisplay: UILabel!
//
//    weak var timer: Timer!
//    var startTime = Date()
//
//    var counter = 100
    
    //ユーザーが指定した時間(仮) 分
    let userTimer:Int = 1
    var count = 0
    
    var timeLabel:UILabel!
    var secondLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let TestView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        let bgColor = UIColor.blue
        TestView.backgroundColor = bgColor
        self.view.addSubview(TestView)
//
//        let TimerDisplay: UILabel = UILabel(frame:CGRect(x: UIScreen.main.bounds.width/3, y: UIScreen.main.bounds.height/3, width: 200, height: 200))
//        TimerDisplay.text = "00:00"
//        self.view.addSubview(TimerDisplay)
//
//
//        StartButton = UIButton()
//        StartButton.frame = CGRect(x: UIScreen.main.bounds.width/3-30, y: UIScreen.main.bounds.height/3+50, width: 200, height: 100)
//        StartButton.setTitle("スタート", for: .normal)
//        StartButton.addTarget(self, action: #selector(TimerViewController.onClickMyButton(sender:)), for: .touchUpInside)
//        self.view.addSubview(StartButton)
        
        //ラベルを適当に用意しておく
        //時間
        timeLabel = UILabel()
        timeLabel.frame = CGRect(x:15,y:8,width:30,height:50)
        timeLabel.font = UIFont.systemFont(ofSize: 22)
        timeLabel.textAlignment = .center
        view.addSubview(timeLabel)
        
        //秒
        secondLabel = UILabel()
        secondLabel.frame = CGRect(x:42,y:43,width:30,height:10)
        secondLabel.font = UIFont.systemFont(ofSize: 10)
        view.addSubview(secondLabel)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @objc internal func onClickMyButton(sender: UIButton) {
//        print("onClickMyButton:");
//        if timer != nil{
//            // timerが起動中なら一旦破棄する
//            timer.invalidate()
//        }
//
//        timer = Timer.scheduledTimer(
//            timeInterval: 1.0,
//            target: self,
//            selector: #selector(self.timerCounter),
//            userInfo: nil,
//            repeats: true)
//
//        timer.fire()
//
//    }
//
//    @objc func timerCounter() {
//        // タイマー開始からのインターバル時間
////        let currentTime = Date().timeIntervalSince(startTime)
//
//        let minute = counter / 60
////        // currentTime/60 の余り
//        let second = counter % 60
////        second = (Int)(fmod(currentTime, 60))
//
//
//        print(minute)
//        print(second)
//        // %02d： ２桁表示、0で埋める
////        let sMinute = String(format:"%02d", minute)
//
//        counter += 1
//
//        TimerDisplay.text = String(second)
//
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(true)
//        timer.invalidate()
//    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //画面が表示されたらタイマーを動かす
        createTimer()
    }

    //タイマーの作成
    func createTimer(){
        count = userTimer * 60
        
        let timer = Timer.scheduledTimer(timeInterval: 1.0,
                                         target: self,
                                         selector: #selector(self.timerAction(sender:)),
                                         userInfo: nil,
                                         repeats: true)
        timer.fire()
        
    }
    
    //タイマーの処理
    @objc func timerAction(sender:Timer){
        if count >= 60 {
            let minuteCount = count / 60
            
            timeLabel.text = String(minuteCount)
            secondLabel.text = "分"
        }else if count < 60{
            timeLabel.text = String(count)
            secondLabel.text = "秒"
            if count == 0{
                sender.invalidate() //止める
            }
        }
        count -= 1
    }
    

    
}
