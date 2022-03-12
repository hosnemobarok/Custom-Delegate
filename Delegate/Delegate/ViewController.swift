//
//  ViewController.swift
//  Delegate
//
//  Created by Md Hosne Mobarok on 26/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func presentSecondVC(_ sender: UIButton) {
        let vc = (self.storyboard?.instantiateViewController(identifier: "SecondVCID"))! as SecondViewController
        vc.modalPresentationStyle = .fullScreen
        vc.delegate = self
        self.present(vc, animated: true)
    }
}

extension ViewController: SecondVCDelegate {
    func changeLabelText(text: String) {
        print(text)
        self.firstLabel.text = text
    }
    
}

