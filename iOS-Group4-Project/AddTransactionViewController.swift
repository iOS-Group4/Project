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

    
    var addTransactionData = ["Amount", "Category", "Date", "Note"]
    var isExpanded = [IndexPath: Bool]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTransactionTableView.delegate = self
        addTransactionTableView.dataSource = self
        addTransactionTableView.separatorStyle = .none
        
    }
    
    
}

extension AddTransactionViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return addTransactionData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let isExpandedForIndexPath = isExpanded[indexPath] ?? false
        
        if indexPath.section == 0 {
            return isExpandedForIndexPath ? 280 : 44
        }else if indexPath.section == 3 {
            return isExpandedForIndexPath ? 280 : 44
        }else{
            return 44
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let isExpandedForIndexPath = isExpanded[indexPath] ?? false
        
        if indexPath.section == 0 || indexPath.section == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionExpandCell") as! TransactionExpandCell
            cell.selectionStyle = .none
            cell.titleLabel.text = addTransactionData[indexPath.section]
            cell.datePickerTopConstraint.constant = isExpandedForIndexPath ? 216 : 0
            return cell
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell") as! TransactionCell
            cell.selectionStyle = .none
            cell.titleLabel.text = addTransactionData[indexPath.section]
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.section == 0 || indexPath.section == 3) && isExpanded[indexPath] == false || isExpanded[indexPath] == nil  {
            isExpanded[indexPath] = true
            
            
        }else{
            isExpanded[indexPath] = false
        }
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
}
