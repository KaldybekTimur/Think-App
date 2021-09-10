//
//  FavoriteViewController.swift
//  Think
//
//  Created by Timur Kaldybek on 03.08.2021.
//

import UIKit

class MyFavoriteViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var phraseView: UIView!
    @IBOutlet weak var phrase: UILabel!
    
    var phraseText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startUI()
        phrase.text = phraseText
    }
    
    func startUI(){
        UIView.animate(withDuration: 2.0) {
            self.phraseView.alpha = 0.5
            self.phrase.alpha = 1
        }
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
