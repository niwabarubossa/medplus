import UIKit
import Charts

class MyPageViewController: UIViewController{

    
    @IBOutlet weak var barChartView: BarChartView!
    
    var months: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //------------------------------------<  >--------------------------------
        months = ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"]
        let unitsSold = [181, 190, 192, 211, 220, 229, 245, 251, 271, 290, 303, 321.0]
        barChartView.animate(yAxisDuration: 2.0)
        barChartView.pinchZoomEnabled = false
        barChartView.drawBarShadowEnabled = false
        barChartView.drawBordersEnabled = false
            // ダブルタップでズームが可能か
        barChartView.doubleTapToZoomEnabled = false
        
            // グリッド線の表示
        barChartView.drawGridBackgroundEnabled = true


        barChartView.chartDescription?.text = "累計瞑想時間"
        
        setChart(dataPoints: months, values: unitsSold)
        //------------------------------------<  >--------------------------------

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func setChart(dataPoints: [String], values: [Double]) {
        barChartView.noDataText = "You need to provide data for the chart."
        
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(x: Double(i), y: Double(values[i]))
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "累計連続瞑想時間")
        let chartData = BarChartData(dataSet: chartDataSet)
        barChartView.data = chartData
    }
    
}
