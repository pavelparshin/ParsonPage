//
//  PersonsTableViewController.swift
//  ParsonPage
//
//  Created by Pavel Parshin on 09.06.2020.
//  Copyright © 2020 Pavel Parshin. All rights reserved.
//

import UIKit

class PersonsTableViewController: UITableViewController {

    let persons = Person.getPersons()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        
        cell.textLabel?.text = persons[indexPath.row].fullName
        
        return cell
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personDetailsVC = segue.destination as! PersonDetailsViewController
        personDetailsVC.personDetails = persons[indexPath.row]
    }
}
