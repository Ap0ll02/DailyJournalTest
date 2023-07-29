//
//  EntriesTableViewController.swift
//  DailyJournalTest
//
//  Created by Apolo on 7/2/23.
//

import UIKit

class EntriesTableViewController: UITableViewController {
    
    var entries: [Entry] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let entryVC = segue.destination as? JournalViewController {
            entryVC.entriesVC = self
        }
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let journalCell = UITableViewCell()
        let entry = entries[indexPath.row]
        journalCell.textLabel?.text = entry.text
        return journalCell
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return entries.count
    }
    

}
