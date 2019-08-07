//
//  ViewController.swift
//  UISlider
//
//  Created by Ника Перепелкина on 07/08/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.value = 1
        
        label.font = label.font.withSize(35)
        label.text = String(format: "%.2f", slider.value)
        
        slider.minimumValue = 0
        slider.maximumValue = 1
        
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .green
        slider.thumbTintColor = .gray
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        
        label.text = String(format: "%.2f", sender.value)
     
        let backgroundColor = self.view.backgroundColor
        self.view.backgroundColor = backgroundColor?.withAlphaComponent(CGFloat(sender.value))
    }
}

