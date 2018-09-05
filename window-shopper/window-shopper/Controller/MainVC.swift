//
//  ViewController.swift
//  window-shopper
//
//  Created by Steven McGrath on 9/5/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxtField: CurrencyTextField!
    @IBOutlet weak var priceTxtField: CurrencyTextField!
    @IBOutlet weak var hoursNeededLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
        wageTxtField.inputAccessoryView = calcBtn
        priceTxtField.inputAccessoryView = calcBtn
    }
    
    @IBAction func onClearCalculatorTapped(_ sender: UIButton) {
        hoursLbl.isHidden = true
        hoursNeededLbl.isHidden = true
        wageTxtField.text = ""
        priceTxtField.text = ""
    }
    @objc func calculate() {
        if let wageTxt = wageTxtField.text, let priceTxt = priceTxtField.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                hoursLbl.isHidden = false
                hoursNeededLbl.isHidden = false
                hoursNeededLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
}
