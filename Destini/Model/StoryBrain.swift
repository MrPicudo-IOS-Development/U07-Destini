/* StoryBrain.swift -> Destini. Created by Miguel Torres on 15/01/23. */

import Foundation

struct StoryBrain {
    /* Atributos */
    
    // Arreglo de objetos tipo Story para la app
    let dataBase = [    Story(title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.", choice1: "I'll hop in. Thanks for the help!", choice1Destination: 2, choice2: "Better ask him if he's a murderer first.", choice2Destination: 1),
                        Story(title: "He nods slowly, unfazed by the question.", choice1: "At least he's honest. I'll climb in.", choice1Destination: 2, choice2: "Wait, I know how to change a tire.", choice2Destination: 3),
                        Story(title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", choice1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5, choice2: "It's him or me! You take the knife and stab him.", choice2Destination: 4),
                        Story(title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?", choice1: "The", choice1Destination: 0, choice2: "End", choice2Destination: 0),
                        Story(title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.", choice1: "The", choice1Destination: 0, choice2: "End", choice2Destination: 0),
                        Story(title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'", choice1: "The", choice1Destination: 0, choice2: "End", choice2Destination: 0) ]
    
    // Variable que controla la historia mostrada.
    var storyNumber = 0
    
    /* Métodos */
    
    // Método para el control de la siguiente historia mostrada
    func nextStory(_ userChoise: String) {
        // Code
    }
}

/* Historia original creada para la práctica inicial de la aplicación:
 
 // Arreglo de objetos tipo Story para la app
 let dataBase = [    Story(t: "You see a fork in the road", c1: "Take a left", c2: "Take a right"),
                     Story(t: "You see a tiger", c1: "Shout for help", c2: "Play dead"),
                     Story(t: "You find a treasure chest", c1: "Open it", c2: "Check for traps"),
                     Story(t: "Nobody came", c1: "Run", c2: "Fight the tiger"),
                     Story(t: "The tiger walks arround for fifteen minutes, then leaves", c1: "Get up and keep walking", c2: "Get up and return to the road"),
                     Story(t: "The tiger catches you and eat you", c1: "You're", c2: "dead."),
                     Story(t: "You have 3 seconds until the tiger reaches you", c1: "Load your beretta 1301 and fire!", c2: "Run towards it and fight back!"),
                     Story(t: "The tiger hunt you 1 km ahead", c1: "You're", c2: "dead."),
                     Story(t: "You go back to the road and see the fork again", c1: "Take a left", c2: "Take a right"),
                     Story(t: "You kill the tiger. Now you will fight your killing instints the rest of your life.", c1: "Game", c2: "over."),
                     Story(t: "You die in the first 2 seconds, like anyone else who fight a tiger barehands...", c1: "Game", c2: "over."),
                     Story(t: "A giant rock falls into your head.", c1: "You're", c2: "dead."),
                     Story(t: "There's a trap, and it activates if you step in front of the chest", c1: "Go back and live your life", c2: "Try to open the chest from the back of it."),
                     Story(t: "In your way home you find a briefcase with a million dollars, you had a really god day after all.", c1: "Game", c2: "over!"),
                     Story(t: "Somehow, you succeed opening the chest, and there's a giant diamond inside!", c1: "Take the diamond and go back.", c2: "Just keep looking the diamond"),
                     Story(t: "A group of bandits arrive and kills you for the diamond", c1: "You're", c2: "dead.") ]
 
 // Método para el control de la historia original creada:
 func nextStory(_ userChoise: String) -> Int {
     switch userChoise {
         case dataBase[0].choise1: return 1
         case dataBase[0].choise2: return 2
         case dataBase[1].choise1: return 3
         case dataBase[1].choise2: return 4
         case dataBase[2].choise1: return 11
         case dataBase[2].choise2: return 12
         case dataBase[3].choise1: return 5
         case dataBase[3].choise2: return 6
         case dataBase[4].choise1: return 7
         case dataBase[4].choise2: return 8
         case dataBase[6].choise1: return 9
         case dataBase[6].choise2: return 10
         case dataBase[8].choise1: return 1
         case dataBase[8].choise2: return 2
         case dataBase[12].choise1: return 13
         case dataBase[12].choise2: return 14
         case dataBase[14].choise1: return 13
         case dataBase[14].choise2: return 15
         default: return 0
     }
 }
 
 
 */
