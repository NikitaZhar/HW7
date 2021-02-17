//
//  ContactItemViewController.swift
//  ContactsList
//
//  Created by Nikita Zharinov on 17/02/2021.
//

import UIKit

class ContactItemViewController: UITableViewController {

    var listOfPersons = Person.listOfPersons()

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listOfPersons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactItem", for: indexPath)
        
        let person = listOfPersons[indexPath.row]
        var cellContent = cell.defaultContentConfiguration()
        cellContent.text = "\(person.firstName) \(person.surName)"
        cell.contentConfiguration = cellContent
        return cell
    }
     
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactInfoVC = segue.destination as! ContactInfoViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contact = listOfPersons[indexPath.row]
        contactInfoVC.contact = contact
    }

}
