//
//  StoriesTableViewController.swift
//  NewspaperExample
//
//  Created by Ahad Islam on 11/8/19.
//  Copyright © 2019 Ahad Islam. All rights reserved.
//

import UIKit

struct HeadLine {
    
    var id: Int
    var title: String
    var text: String
    var image: String
}

class StoriesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    var headlines = [
        HeadLine(id: 1, title: "Boozy", text: "lol idk", image: "a"),
        HeadLine(id: 1, title: "asdf", text: "ok idk", image: "okok"),
        HeadLine(id: 1, title: "asdf", text: "ok idk", image: "okok"),
    ]
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        cell.textLabel?.text = headlines[indexPath.row].title
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }

}
