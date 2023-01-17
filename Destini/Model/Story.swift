/* Story.swift -> Destini. Created by Miguel Torres on 15/01/23. */

import Foundation

struct Story {
    /* Atributos */
    let title: String
    let choice1: String
    let choice1Destination: Int
    let choice2: String
    let choice2Destination: Int
    
    /* Inicializador de la estructura */
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        self.title = title
        self.choice1 = choice1
        self.choice1Destination = choice1Destination
        self.choice2 = choice2
        self.choice2Destination = choice2Destination
    }
}
