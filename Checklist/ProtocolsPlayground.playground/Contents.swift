import UIKit

protocol Persist {
    func save()
}

class Monster: Persist {
    func save() {
        print("Monster save")
    }
}

class Sword : Persist {
    func save() {
        print("Sword save")
    }
}

class Player {
    
}
let monster = Monster()
let sword = Sword()
let player = Player()
let items : [Persist] = [monster, sword]
