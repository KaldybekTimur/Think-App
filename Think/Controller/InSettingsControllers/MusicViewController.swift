//
//  MusicViewController.swift
//  Think
//
//  Created by Timur Kaldybek on 31.07.2021.
//

import UIKit
import AVFoundation

class MusicViewController: UIViewController {
    
    
    public var music = [
        "music1",
        "music2",
        "music3"
    ]
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
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

