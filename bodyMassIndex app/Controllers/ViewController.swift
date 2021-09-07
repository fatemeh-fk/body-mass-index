//
//  ViewController.swift
//  bodyMassIndex app
//
//  Created by Fateme Karimi on 2021-08-31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel:
        UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weigthSlider: UISlider!
     var bmiValue = "0.0"
    
    
    
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderPressed(_ sender: UISlider) {
        heightLabel.text = (" \(String(format : "%.2f", sender.value))m")
    }
    
    @IBAction func weightPressed(_ sender: UISlider) {
        weightLabel.text = (" \(String(format : "%.2f", sender.value))kg")
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weigthSlider.value
        
        let bmi = weight / pow(height, 2)
        //let bmi = weight / (height * height)
        print(bmi)
        //let shortenedBmi = String(format: "%.2f", bmi)
        bmiValue = String(format: "%.1f", bmi)
        self.performSegue(withIdentifier: "goToResult", sender: self)
       
      
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
            
        }
    }
    
}

