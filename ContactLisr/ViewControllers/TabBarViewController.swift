//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Кирилл on 15.07.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()

    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let contactDitailVS = viewControllers?.last as? ContactDitailsViewController else { return }
        
        let persons = Person.getContsctList()
        contactListVC.persons = persons
        contactDitailVS.persons = persons
    }
}
