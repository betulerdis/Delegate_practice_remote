//
//  SecondScreen.swift
//  Delegate_practice
//
//  Created by Betul Erdis on 2022-07-14.
//

import UIKit

protocol ColorSelectionDelegate {
    func didTapChoice(name: String, color: UIColor)
}
class SecondScreen: UIViewController {

    @IBOutlet weak var chooseLabel: UILabel!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    
    var selectionDelegate: ColorSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func redButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(name: "Congratulations!", color: .red)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func blackButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(name: "Try Again!", color: .black)
        dismiss(animated: true, completion: nil)
    }
}
