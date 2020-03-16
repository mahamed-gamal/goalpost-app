//
//  Goalsvc.swift
//  goalpost-app
//
//  Created by Mohamed Gamal on 3/16/20.
//  Copyright © 2020 ME. All rights reserved.
//

import UIKit

class GoalsVc: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: - Actions
    @IBAction func createGoalDidPressed(_ sender: Any) {
        print("button is pressed...")
    }
}

