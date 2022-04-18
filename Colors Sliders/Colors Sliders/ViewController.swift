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
        mainView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        // Do any additional setup after loading the view.
    }

    private func setColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value / 255),
            green: CGFloat(greenSlider.value / 255),
            blue: CGFloat(blueSlider.value / 255),
            alpha: 1)
    }
    
    @IBAction func slidersAction(_ sender: Any) {
        guard let slider = sender as? UISlider else { return }
        
        setColor()
        switch slider.tag {
        case 0: redLabel.text = String(Int(redSlider.value))
        case 1: greenLabel.text = String(Int(greenSlider.value))
        case 2: blueLabel.text = String(Int(blueSlider.value))
        default: break
        }
    }
}

