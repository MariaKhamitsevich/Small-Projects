//
//  ViewController.swift
//  Colors Sliders
//
//  Created by  Maria Khamitsevich on 17.04.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mainView: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        // Do any additional setup after loading the view.
    }

    @IBAction func redSliderAction(_ sender: Any) {
        redLabel.text = String(Int(redSlider.value))
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value / 255),
            green: CGFloat(greenSlider.value / 255),
            blue: CGFloat(blueSlider.value / 255),
            alpha: 1)
        print(redSlider.value)
        print(greenSlider.value)
        print(blueSlider.value)
    }
    
    @IBAction func greenSliderAction(_ sender: Any) {
        greenLabel.text = String(Int(greenSlider.value))
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value / 255),
            green: CGFloat(greenSlider.value / 255),
            blue: CGFloat(blueSlider.value / 255),
            alpha: 1)
        print(redSlider.value)
        print(greenSlider.value)
        print(blueSlider.value)
        
    }

    @IBAction func blueSliderAction(_ sender: Any) {
        blueLabel.text = String(Int(blueSlider.value))
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value / 255),
            green: CGFloat(greenSlider.value / 255),
            blue: CGFloat(blueSlider.value / 255),
            alpha: 1)
    }
}

