import UIKit

class RecordRootViewController: UIViewController {
    
    var ManualVC:ManualViewController = ManualViewController()
    var TimerVC:TimerViewController = TimerViewController()
    var StopWatchVC:StopWatchViewController = StopWatchViewController()

    @IBOutlet weak var MySegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func setup(){
//        ManualVC.view.backgroundColor = UIColor.cyan
//        TimerVC.view.backgroundColor = UIColor.magenta
//        StopWatchVC.view.backgroundColor = UIColor.blue
        
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
