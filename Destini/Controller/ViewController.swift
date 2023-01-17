/* ViewController.swift -> Destini. Created by Miguel Torres on 15/01/23. */

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choise1Button: UIButton!
    @IBOutlet weak var choise2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func choiseMade(_ sender: UIButton) {
        storyBrain.storyNumber = storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    // Función para actualizar el texto de la historia y de las opciones en los botones.
    func updateUI() {
        storyLabel.text = storyBrain.dataBase[storyBrain.storyNumber].title
        choise1Button.setTitle(storyBrain.dataBase[storyBrain.storyNumber].choise1, for: .normal)
        choise2Button.setTitle(storyBrain.dataBase[storyBrain.storyNumber].choise2, for: .normal)
    }
}
