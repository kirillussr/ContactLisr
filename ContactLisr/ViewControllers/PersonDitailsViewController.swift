//
//  PersonDitailsViewController.swift
//  ContactLisr
//
//  Created by Кирилл on 09.07.2023.
//

import UIKit

final class PersonDitailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var personList: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(personList.name) \(personList.surname)"
        phoneLabel.text = personList.phone
        emailLabel.text = personList.email
    }
}
