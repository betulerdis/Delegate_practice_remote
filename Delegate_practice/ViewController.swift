//
//  ViewController.swift
//  Delegate_practice
//
//  Created by Betul Erdis on 2022-07-14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var mainImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButtonTapped(_ sender:UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SecondScreen") as! SecondScreen
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
        
    }
}

extension ViewController: ColorSelectionDelegate {
    func didTapChoice(name: String, color: UIColor) {
        colorLabel.text = name
        view.backgroundColor = color
    }
    
    
    
}
