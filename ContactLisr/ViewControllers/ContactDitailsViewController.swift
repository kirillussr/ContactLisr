//
//  ContactDitailsViewController.swift
//  ContactLisr
//
//  Created by Кирилл on 09.07.2023.
//

import UIKit

final class ContactDitailsViewController: UITableViewController {
    
    var personList = Person.getPerson()

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        30.0
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "phone", for: indexPath)
            var content = cell.defaultContentConfiguration()
            let phone = personList[indexPath.section]
            content.text = phone.phone
            cell.contentConfiguration = content
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath)
            var content = cell.defaultContentConfiguration()
            let email = personList[indexPath.section]
            content.text = email.email
            cell.contentConfiguration = content
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(personList[section].name) \(personList[section].surname)"
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .systemGray6
    }
}

