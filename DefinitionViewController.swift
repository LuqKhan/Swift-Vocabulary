//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Luqmaan Khan on 5/28/19.
//  Copyright © 2019 Luqmaan Khan. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var definitionText: UITextView!
    
    
    
    
    
    var vocabWord: VocabularyWord?
    
    
    func updateViews() {
        
        guard let unwrappedVocabWord = vocabWord else {return}
          
            //print(unwrappedVocabWord.definition)
            
           definitionText.text = unwrappedVocabWord.definition
           wordLabel.text = unwrappedVocabWord.word
        
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        updateViews()
    
    
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
