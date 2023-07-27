//
//  ViewController.swift
//  Counter
//
//  Created by Vladislav Tudos on 25.07.2023.
//

import UIKit

class ViewController: UIViewController {

    var count = 0 //Счетчик
    var historyText = "История изменений:"
    var date: Date = Date()
    
    func Upd(){
        date = Date()
        Count.text = String(count)
        HistoryCount.text = historyText
    }
    
    
    @IBOutlet weak var HistoryCount: UITextView!
    @IBOutlet weak var Count: UILabel!
    @IBOutlet weak var AddCount: UIButton!
    @IBOutlet weak var MinusCount: UIButton!
    @IBOutlet weak var ResetCount: UIButton!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AddCount.backgroundColor = UIColor.red
        MinusCount.backgroundColor = UIColor.blue
        HistoryCount.isScrollEnabled = true
        
    }
    
    @IBAction func AddCountTap(_ sender: Any) {
        count += 1
        historyText += "\n [\(date)]: значение изменено на +1"
        Upd()
        
    }
    
    @IBAction func MinusCountTap(_ sender: Any) {
        
        count -= 1
        if (count < 0){
            historyText += "\n [\(date)]: попытка уменьшить значение счётчика ниже 0"
            count += 1
            Upd()
        } else{
            historyText += "\n [\(date)]: значение изменено на -1"
            Upd()
        }
    }
    
    @IBAction func ResetCountTap(_ sender: Any) {
    
        count = 0
        historyText += "\n [\(date)]: значение сброшено"
        Upd()
    }
    
    
}

