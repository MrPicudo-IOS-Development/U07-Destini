/* Story.swift -> Destini. Created by Miguel Torres on 15/01/23. */

import Foundation

struct Story {
    /* Atributos */
    let title: String
    let choise1: String
    let choise2: String
    
    /* Inicializador de la estructura */
    init(t: String, c1: String, c2: String) {
        self.title = t
        self.choise1 = c1
        self.choise2 = c2
    }
}
