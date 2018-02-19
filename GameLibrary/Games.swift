//
//  Games.swift
//  GameLibrary
//
//  Created by Bersabeh Asefa on 2/18/18.
//  Copyright © 2018 Bersabeh Asefa. All rights reserved.
//

import Foundation

func mainMenu() {

print(" 1. Add games \n 2. remove a game \n 3. check a game out \n 4. check a game in \n 5. Quit the program")



func printAvailabaleGames() {
    print("Current Game List 🙂 ")
    print("Number \t Title \t\t Checkin date \t\t\t CheckOut Date")
    for (index, element) in game.enumerated() {

        print("\(index). \t \(element.gameName) \t \(element.checkInDate) \t \(element.checkedOutDate as Date?))  ")
    }
}


func addGame() {
    printAvailabaleGames()
    print("\n enter new Game name: ")
    let name = String(readLine()!)
    game.append(Game(gameName: name, checkInDate: Date()) )




 print("new Game Added 🙂 \n")
 printAvailabaleGames()
}


func removeGame() {
    printAvailabaleGames()
    print("\nWhat Game do you want to remove? choose the Number please:")
    let  removeGame = Int(readLine()!)
    if let removeGame = removeGame {
        game.remove(at: removeGame)
}

    
    print("removed!")
    printAvailabaleGames()
}

func checkOut() {
    printAvailabaleGames()
    print("\nWhich game do you want to check out? choose the Number please:")
    let  checkGameout = Int(readLine()!)
    if let checkGameout = checkGameout {
        game[checkGameout].checkedOutDate = Date()
    }
    print("checked out! successfully")
    printAvailabaleGames()
}

var inputNumber = Int(readLine()!)

    if inputNumber == 1 {
        addGame()
    } else if inputNumber == 2 {
        removeGame()
    } else if inputNumber == 3 {
        
        checkOut()
    }






}
