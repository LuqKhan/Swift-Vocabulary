//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Luqmaan Khan on 5/28/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    
    var vocabController = VocabularyController(vocabWords: [VocabularyWord(word: "", definition: "")])
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vocabController.vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        cell.textLabel?.text = vocabController.vocabWords[indexPath.row].word

        return cell
    }
 

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowSegue" {
            
            guard let detailVC = segue.destination as? DefinitionViewController, let indexPath = tableView.indexPathForSelectedRow else {return}
            
            let word = vocabController.vocabWords[indexPath.row]
            
             detailVC.vocabWord = word
            
            
        }
        
    }
 

}
