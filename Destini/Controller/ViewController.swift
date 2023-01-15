/* ViewController.swift -> Destini. Created by Miguel Torres on 15/01/23. */

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choise1Button: UIButton!
    @IBOutlet weak var choise2Button: UIButton!
    let dataBase = [    Story(t: "You see a fork in the road", c1: "Take a left", c2: "Take a right"), // Line 11 -> Complete
                        Story(t: "You see a tiger", c1: "Shout for help", c2: "Play dead"), // Line 12 ---> line11-c1 AND line19-c1 --> Complete
                        Story(t: "You find a treasure chest", c1: "Open it", c2: "Check for traps"), // Line 13 --> line11-c2 AND line19-c2 --> Complete.
                        Story(t: "Nobody came", c1: "Run", c2: "Fight the tiger"), // Line 14 --> line12-c1 --> Complete
                        Story(t: "The tiger walks arround for fifteen minutes, then leaves", c1: "Get up and keep walking", c2: "Get up and return to the road"), // Line 15 --> line12-c2 --> Complete.
                        Story(t: "The tiger catches you and eat you", c1: "You're", c2: "dead."), // Line 16 --> line14-c1 --> END
                        Story(t: "You have 3 seconds until the tiger reaches you", c1: "Load your beretta 1301 and fire!", c2: "Run towards it and fight back!"), // Line 17 --> line14-c2 --> Complete.
                        Story(t: "The tiger hunt you 1 km ahead", c1: "You're", c2: "dead."), // Line 18 --> line15-c1 --> END
                        Story(t: "You go back to the road and see the fork again", c1: "Take a left", c2: "Take a right"), // Line 19 --> line15-c2 --> Complete
                        Story(t: "You kill the tiger. Now you will fight your killing instints the rest of your life.", c1: "Game", c2: "over."), // Line 20 --> line17-c1 --> END.
                        Story(t: "You die in the first 2 seconds, like anyone else who fight a tiger barehands...", c1: "Game", c2: "over."), // Line 21 --> line17-c2 --> END.
                        Story(t: "A giant rock falls into your head.", c1: "You're", c2: "dead."), // Line 22 --> line13-c1 --> END
                        Story(t: "There's a trap, and it activates if you step in front of the chest", c1: "Go back and live your life", c2: "Try to open the chest from the back of it."), // Line 23 --> line13-c2 --> Complete
                        Story(t: "In your way home you find a briefcase with a million dollars, you had a really god day after all.", c1: "Game", c2: "over!"), // Line 24 --> line23-c1 AND line25-c1 --> END
                        Story(t: "Somehow, you succeed opening the chest, and there's a giant diamond inside!", c1: "Take the diamond and go back.", c2: "Just keep looking the diamond"), // Line 25 --> line23-c2 -->  Complete.
                        Story(t: "A group of bandits arrive and kills you for the diamond", c1: "You're", c2: "dead.") ] // Line 26 --> line25-c2 --> END.
    
    var storyNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func choiseMade(_ sender: UIButton) {
        
        switch sender.currentTitle! {
        // Opciones iniciales.
        case dataBase[0].choise1:
            storyNumber = 1
            updateUI()
        case dataBase[0].choise2:
            storyNumber = 2
            updateUI()
        // Opciones del índice 1
        case dataBase[1].choise1:
            storyNumber = 3
            updateUI()
        case dataBase[1].choise2:
            storyNumber = 4
            updateUI()
        // Opciones del índice 2
        case dataBase[2].choise1:
            storyNumber = 11
            updateUI()
        case dataBase[2].choise2:
            storyNumber = 12
            updateUI()
        // Opciones del índice 3
        case dataBase[3].choise1:
            storyNumber = 5
            updateUI()
        case dataBase[3].choise2:
            storyNumber = 6
            updateUI()
        // Opciones del índice 4
        case dataBase[4].choise1:
            storyNumber = 7
            updateUI()
        case dataBase[4].choise2:
            storyNumber = 8
            updateUI()
        /* Opciones del índice 5 */
        // Opciones del índice 6
        case dataBase[6].choise1:
            storyNumber = 9
            updateUI()
        case dataBase[6].choise2:
            storyNumber = 10
            updateUI()
        /* Opciones del índice 7 */
        // Opciones del índice 8
        case dataBase[8].choise1:
            storyNumber = 1
            updateUI()
        case dataBase[8].choise2:
            storyNumber = 2
            updateUI()
        /* Opciones del índice 9 */
        /* Opciones del indice 10 */
        /* Opciones del índice 11 */
        // Opciones del índice 12
        case dataBase[12].choise1:
            storyNumber = 13
            updateUI()
        case dataBase[12].choise2:
            storyNumber = 14
            updateUI()
        /* Opciones del índice 13 */
        // Opciones del índice 14
        case dataBase[14].choise1:
            storyNumber = 13
            updateUI()
        case dataBase[14].choise2:
            storyNumber = 15
            updateUI()
        default:
            storyNumber = 0
            updateUI()
        }
        
    }
    
    // Función para actualizar el texto de la historia y de las opciones en los botones.
    func updateUI() {
        storyLabel.text = dataBase[storyNumber].title
        choise1Button.setTitle(dataBase[storyNumber].choise1, for: .normal)
        choise2Button.setTitle(dataBase[storyNumber].choise2, for: .normal)
    }
}
