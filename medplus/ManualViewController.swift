import UIKit

class ManualViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    
    
    
    // 選択肢
    let dataList = ["1時間","2時間","3時間","4時間","5時間","6時間","7時間","8時間","9時間","10時間","11時間","12時間","13時間","14時間","15時間","16時間","17時間","18時間","19時間","20時間","21時間","22時間","23時間"]
    let dataList2 = ["0分","1分","2分","3分","4分","5分","6分","7分","8分","9分","10分","11分","12分","13分","14分","15分","16分","17分","18分","19分","20分","21分","22分","23分","24分","25分","26分","27分","28分","29分","30分","31分","32分","33分","34分","35分","36分","37分","38分","39分","40分","41分","42分","43分","44分","45分","46分","47分","48分","49分","50分","51分","52分","53分","54分","55分","56分","57分","58分","59分"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.darkGray
        let SendButton = UIButton(frame: CGRect(x: self.view.frame.width/3, y: self.view.frame.height/3*2, width: self.view.frame.width/3, height: 100))
        
        SendButton.setTitle("送信", for: .normal)
        SendButton.setTitleColor(UIColor.black, for: .normal)
        // イベントを追加する
        SendButton.addTarget(self, action: #selector(ManualViewController.TappedSendButton(sender:)), for: .touchUpInside)

        // ピッカーの作成
        let picker = UIPickerView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 100))
        picker.center = self.view.center
        // プロトコルの設定
        picker.delegate = self
        picker.dataSource = self

        // はじめに表示する項目を指定
        picker.selectRow(1, inComponent: 0, animated: true)
        picker.selectRow(2, inComponent: 1, animated: true)
        
        self.view.addSubview(picker)
        self.view.addSubview(SendButton)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
 
    // UIPickerViewDataSource
//------------------------------------< Picker >--------------------------------

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // 表示する列数
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            // 1個目のピッカーの設定
            return dataList.count
        }
        
        return dataList2.count
    }
    
    // UIPickerViewDelegate
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // 表示する文字列を返す
        if component == 0 {
            // 1個目のピッカーの設定
            return dataList[row]
        }
        
        return dataList2[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // 選択時の処理
        
        if component == 0 {
            // 1個目のピッカーの設定
            print(dataList[row])
        }
        print(dataList2[row])
    }
//------------------------------------<Picker>--------------------------------

    @objc internal func TappedSendButton(sender: UIButton) {
        print("タップされました")
    }

}
