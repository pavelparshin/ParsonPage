//
//  ContactsTableViewController.swift
//  ParsonPage
//
//  Created by Pavel Parshin on 09.06.2020.
//  Copyright © 2020 Pavel Parshin. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var persons: [Person] {
        let main = tabBarController?.viewControllers?.first as! PersonsTableViewController
        return main.persons
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
    
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = persons[indexPath.section].phoneNumber
            cell.imageView?.image = UIImage(systemName: "phone.fill")
        default:
            cell.textLabel?.text = persons[indexPath.section].email
            cell.imageView?.image = UIImage(systemName: "envelope.fill")
        }
        return cell
    }
    
    //MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }
    
    //MARK: Visual Update
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.textLabel?.font = .boldSystemFont(ofSize: 17)
        header.textLabel?.textAlignment = .center
    }
}
