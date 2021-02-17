//
//  ContactInfoViewController.swift
//  ContactsList
//
//  Created by Nikita Zharinov on 17/02/2021.
//

import UIKit

class ContactInfoViewController: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = "\(contact.firstName) \(contact.surName)"
        mailLabel.text = contact.mail
        phoneLabel.text = contact.phone
    }
}
