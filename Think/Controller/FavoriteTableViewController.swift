//
//  FavoriteTableViewController.swift
//  Think
//
//  Created by Timur Kaldybek on 02.08.2021.
//

import UIKit

protocol FavoriteTableViewControllerDelegate: AnyObject {
    func controller(_ controller: UIViewController, didDeletePhrase phrase: String)
    func controller(_ controller: UIViewController, didSelectedPhrase phrase: String)
}

class FavoriteTableViewController: UITableViewController {
    @IBOutlet weak var backButton: UINavigationItem!
    
    public weak var delegate: FavoriteTableViewControllerDelegate?
    
    var favoritePhrases = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(favoritePhrases)
    }

    override func viewWillAppear(_ animated: Bool) {
        backButton.title = "Понравилось"
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoritePhrases.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = favoritePhrases[indexPath.row]
        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let phrase = favoritePhrases[indexPath.row]
            favoritePhrases.remove(at: indexPath.row)
            delegate?.controller(self, didDeletePhrase: phrase)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      //  performSegue(withIdentifier: "toFavoriteCell", sender: self)
        let phrase = favoritePhrases[indexPath.row]
        delegate?.controller(self, didSelectedPhrase: phrase)
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFavoriteCell"{
            let vc = segue.destination as! MyFavoriteViewController
            vc.phraseText = favoritePhrases
        }
    }
*/
    

}
