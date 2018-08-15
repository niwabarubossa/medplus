import UIKit

class RecordRootViewController: UIViewController {
    


    @IBOutlet weak var MySegmentedControl: UISegmentedControl!

    var ManualVC:ManualViewController = ManualViewController()
    var TimerVC:TimerViewController = TimerViewController()
    var StopWatchVC:StopWatchViewController = StopWatchViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func setup(){

        MySegmentedControl.setTitle("手動入力", forSegmentAt: 0)
        MySegmentedControl.setTitle("タイマー", forSegmentAt: 1)
        MySegmentedControl.setTitle("ストップウォッチ", forSegmentAt: 2)
        
        self.view.addSubview(StopWatchVC.view)
        self.view.addSubview(TimerVC.view)
        self.view.addSubview(ManualVC.view)
    }

    @IBAction func tappedSegmentedControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.bringSubview(toFront: ManualVC.view)
        case 1:
            self.view.bringSubview(toFront: TimerVC.view)
        case 2:
            self.view.bringSubview(toFront: StopWatchVC.view)
        default:
            print("")
        }
    }

}
