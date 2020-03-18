//
//  CreateGoalVc.swift
//  goalpost-app
//
//  Created by Mohamed Gamal on 3/18/20.
//  Copyright © 2020 ME. All rights reserved.
//

import UIKit

class CreateGoalVc: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var createGoalTextView: UITextView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var shortTermBtn: UIButton!
    
    //MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //MARK: - Actions
    @IBAction func nextBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func shortTermBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func longTermBtnPressed(_ sender: Any) {
        
        
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
