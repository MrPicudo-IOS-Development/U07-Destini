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
        storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    // Función para actualizar el texto de la historia y de las opciones en los botones.
    func updateUI() {
        storyLabel.text = storyBrain.getTitle()
        choise1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choise2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}


/* Yo lo había resuelto sin métodos getters para el texto de la historia y las opciones de los botones, de la siguiente manera:
 
 func updateUI() {
     storyLabel.text = storyBrain.dataBase[storyBrain.storyNumber].title
     choise1Button.setTitle(storyBrain.dataBase[storyBrain.storyNumber].choice1, for: .normal)
     choise2Button.setTitle(storyBrain.dataBase[storyBrain.storyNumber].choice2, for: .normal)
 }
 
 Sin embargo, al revisar el trabajo de Angela, debo mejorar mi código para que sea más entendible y a la vez, más avanzado, por el uso de dichos métodos.
 
 La actualización del código es la que está implementada en la aplicación funcional.
 
 */
