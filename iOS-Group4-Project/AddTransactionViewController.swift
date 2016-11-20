//
//  AddTransactionViewController.swift
//  iOS-Group4-Project
//
//  Created by Kyou on 11/20/16.
//  Copyright © 2016 Van Do. All rights reserved.
//

import UIKit

class AddTransactionViewController: UIViewController {
    @IBOutlet weak var addTransactionTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        addTransactionTableView.delegate = self
        addTransactionTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AddTransactionViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell") as! TransactionCell
        
        cell.titleLabel.text = "test"
        
        return cell
    }
}
