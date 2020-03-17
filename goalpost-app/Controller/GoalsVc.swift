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
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    //MARK: - Actions
    @IBAction func createGoalDidPressed(_ sender: Any) {
        print("button is pressed...")
    }
}

extension GoalsVc: UITableViewDelegate , UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GoalCell") as? GoalCell else {return UITableViewCell()}
        
        cell.configureCell(description: "Eat salad twice a weak.", type: .shortTerm, goalProgressAmount: 2)
        
        return cell
    }
}

