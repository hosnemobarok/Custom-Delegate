//
//  SecondViewController.swift
//  Delegate
//
//  Created by Md Hosne Mobarok on 26/5/21.
//

import UIKit

protocol SecondVCDelegate: class {
    func changeLabelText(text: String)
}

class SecondViewController: UIViewController {
    
    var delegate: SecondVCDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeVC(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func firstButtonAction(_ sender: UIButton) {
        delegate.changeLabelText(text: "Change By first Button")
    }
    
    @IBAction func secondButtonAction(_ sender: UIButton) {
        delegate.changeLabelText(text: "Change By Second Button")
    }
    
    @IBAction func thirdButtonAction(_ sender: UIButton) {
        delegate.changeLabelText(text: "Change By Third Button")
    }

}
