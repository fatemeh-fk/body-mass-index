//
//  ResultViewController.swift
//  bodyMassIndex app
//
//  Created by Fateme Karimi on 2021-09-07.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue  : String?
    var advice : String?
    var color :UIColor?
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var detatailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        detatailLabel.text = advice
        view.backgroundColor = color
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
   

}
