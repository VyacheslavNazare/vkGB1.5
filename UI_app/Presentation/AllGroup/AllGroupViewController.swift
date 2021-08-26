//
//  AllGroupViewController.swift
//  UI_app
//
//  Created by Вячеслав on 23.08.2021.
//

import UIKit

final class AllGroupViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    let storage: GroupStorage = GroupStorage()
    var groups: [GroupModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groups = storage.allGroup
        tableView.delegate = self
        tableView.dataSource = self

    }
    
   
}

extension AllGroupViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AllGroupViewCell.identifier) as! AllGroupViewCell
        
        cell.configure(group: groups[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
