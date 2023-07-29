//
//  JournalViewController.swift
//  DailyJournalTest
//
//  Created by Apolo on 7/2/23.
//

import UIKit

class JournalViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var entriesVC: EntriesTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let entry = Entry()
        entry.date = datePicker.date
        entry.text = textView.text
        
        entriesVC?.entries.append(entry)
        entriesVC?.tableView.reloadData()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
