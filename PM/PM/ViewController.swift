//
//  ViewController.swift
//  PM
//
//  Created by Serge Gainsbourg on 5/23/20.
//  Copyright © 2020 Serge Gainsbourg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let dateFormatter = DateFormatter(dateFormat: "yyyy/MM/dd")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = Date()
        let lastDateOfTheMonth = date.endOfMonth
        let lastDateOfTheMonthStr = dateFormatter.string(from: lastDateOfTheMonth)
        print("End of the month is \(lastDateOfTheMonthStr)")
    }


}

