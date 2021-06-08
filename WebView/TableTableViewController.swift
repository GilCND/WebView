//
//  TableTableViewController.swift
//  WebView
//
//  Created by Felipe Gil on 2021-06-04.
//

import UIKit

class TableTableViewController: UITableViewController {
    var detailsView = ViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailsView.webSites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = detailsView.webSites[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = storyboard?.instantiateViewController(identifier: "Main") as? ViewController {
            viewController.selectedWebSite = detailsView.webSites[indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
