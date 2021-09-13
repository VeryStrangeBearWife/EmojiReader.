//
//  NewEmojiViewController.swift
//  EmojiReader4
//
//  Created by user on 12.09.2021.
//

import UIKit

class NewEmojiViewController: UIViewController {

    @IBOutlet weak var smile: UITextField!
    
    @IBOutlet weak var text: UITextField!
    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    @IBOutlet weak var descripsion: UITextField!
    @IBAction func addAction() {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let controller =  segue.destination as? EmojiTableViewController else {return}
        guard let smile = smile.text else {return}
        guard let text = text.text else {return}
        guard let desc = descripsion.text else {return}
        emoji = Emoji(emoji: smile, name: text, description: desc, isFavourite: false)
        controller.objects.append(emoji)
    }
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


}
