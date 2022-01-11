//
//  ViewController.swift
//  ClassWork9
//
//  Created by Martynov Evgeny on 11.01.22.
//

import UIKit

class ViewController: UIViewController {
    // метод который стартует первым после инициализации класса
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
    }
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var timer: Timer?
    
    @IBAction func buttonTapped() {
        print("buttonTapped \(timer.debugDescription)")
    }
    
    func setupUI() {
        timeLbl.textColor = .red
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 10
    }
    
    @objc func updateUI() {
        let color = secondView.backgroundColor
        secondView.backgroundColor = firstView.backgroundColor
        firstView.backgroundColor = color
        
        timeLbl.text = Date().formatted(date: .abbreviated, time: .standard)
    }
}
