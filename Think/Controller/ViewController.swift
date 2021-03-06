//
//  ViewController.swift
//  Think
//
//  Created by Timur Kaldybek on 29.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let storageBank = ClassicStorage()
    var temporaryStorage = [String]()
    var check = true
    var favoriteStorage = [String]()
    
    @IBOutlet weak var voiceBarButton: UIBarButtonItem!
    @IBOutlet weak var bacgroundImage: UIImageView!
    @IBOutlet weak var phraseView: UIView!
    @IBOutlet weak var phrase: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {

        startUI()
        hideNavigationBar()
        updateBackView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doubleTapp()
    }

    @IBAction func voiceButtonPressed(_ sender: UIBarButtonItem) {
        check = !check
        
        if check == true {
            voiceBarButton.image = UIImage(named: "soundOn")
        } else {
            voiceBarButton.image = UIImage(named: "soundOff")
        }
    }
    
    @IBAction func settingsButtonPressed(_ sender: Any) {
    }
    
    @IBAction func FavoriteButtonPressed(_ sender: Any) {
    }
    
    @IBAction func goRightPressed(_ sender: UIButton) {
        updateUI()
        print(temporaryStorage)
    }
    
    @IBAction func goLeftPressed(_ sender: UIButton) {
        showPrevious()
        print(temporaryStorage)
    }
    
    func showPrevious(){
        if temporaryStorage.count > 0{
            temporaryStorage.removeLast()
            self.phrase.text = temporaryStorage.last
        } else{
            self.phrase.text = "Пошли вдохновляться"
        }
    }
    
    
    func updateUI(){
        self.phrase.text = self.storageBank.list.randomElement()?.text
        temporaryStorage.append(phrase.text!)
    }
    
    func startUI(){
        UIView.animate(withDuration: 2.0) {
            self.phrase.alpha = 1
        }
    }
    
    func hideNavigationBar(){
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }
    
    func updateBackView(){
        phraseView.layer.cornerRadius = 20
        phraseView.layer.masksToBounds = true
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
    }
    
    @objc func doubleTapped() {
        if !favoriteStorage.contains(self.phrase.text!){
            favoriteStorage.append(self.phrase.text!)
        }
    }
    
    func doubleTapp(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
         tap.numberOfTapsRequired = 2
         view.addGestureRecognizer(tap)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFavorite"{
            let vc = segue.destination as! FavoriteTableViewController
            vc.favoritePhrases = favoriteStorage
            vc.delegate = self
            
            let backItem = UIBarButtonItem()
               backItem.title = "Назад"
               navigationItem.backBarButtonItem = backItem
        }
    }
}

extension ViewController: FavoriteTableViewControllerDelegate {
    
    func controller(_ controller: UIViewController, didDeletePhrase phrase: String) {
        if let index = favoriteStorage.firstIndex(of: phrase) {
            favoriteStorage.remove(at: index)
        }
    }
    
    func controller(_ controller: UIViewController, didSelectedPhrase phrase: String) {
        self.phrase.text = phrase
    }
}
