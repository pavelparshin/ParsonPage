//
//  PersonDetailsViewController.swift
//  ParsonPage
//
//  Created by Pavel Parshin on 09.06.2020.
//  Copyright © 2020 Pavel Parshin. All rights reserved.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var personDetails: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = personDetails.fullName
        phoneNumberLabel.text = personDetails.phoneNumber
        emailLabel.text = personDetails.email
    }
}
