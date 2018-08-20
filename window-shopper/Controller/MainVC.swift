//
//  ViewController.swift
//  window-shopper
//
//  Created by Mark Carruthers on 20/08/2018.
//  Copyright © 2018 Mark Carruthers. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTXT: CurrencyTxtField!
    @IBOutlet weak var priceTXT: CurrencyTxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9467068883, green: 0.242575305, blue: 0.1090087154, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
    
        wageTXT.inputAccessoryView = calcBtn
        priceTXT.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }

    @objc func calculate() {
        if let wageTxt = wageTXT.text, let priceTxt = priceTXT.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTXT.text = ""
        priceTXT.text = ""
    }
    
}

