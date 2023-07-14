//
//  ContactListViewController.swift
//  ContactLisr
//
//  Created by Кирилл on 09.07.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    let personList = Person.getPerson()
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.row]
        content.text = "\(person.name) \(person.surname)"
        cell.contentConfiguration = content
        return cell
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personDitailVC = segue.destination as? PersonDitailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personDitailVC?.personList = personList[indexPath.row]
    }
}






