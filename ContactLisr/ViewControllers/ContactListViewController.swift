//
//  ContactListViewController.swift
//  ContactLisr
//
//  Created by Кирилл on 09.07.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let personDitailVC = segue.destination as? PersonDitailsViewController else { return }
            personDitailVC.person = persons[indexPath.row]
        }
    }
}






