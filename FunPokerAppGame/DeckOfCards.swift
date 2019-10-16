//
//  DeckOfCards.swift
//  FunPokerAppGame
//
//  Created by John Campbell on 16/10/2019.
//  Copyright © 2019 John Campbell. All rights reserved.
//

import Foundation

deckclass DeckOfCards{
    struct Card {
        let rank: Rank
        let suit: Suit
    
        enum Rank: Int{
            case two = 2
            case three, four, five, six, seven, eight, nine, ten
            case Jack, Queen, King, Ace
        
        func rankDescription() -> String{
            switch self{
            case .Jack: return "Jack"
            case .Queen: return "Queen"
            case .King: return "King"
            case .Ace: return "Ace"
            default: return String(self.rawValue)
            }
            
        }
        
        func cardsValue() -> Int{
            switch self{
            case .Jack: return 10
            case .Queen: return 10
            case .King: return 10
            case .Ace: return 20
            default: return 5
            }}
        
    }
    
    enum Suit: String{
        case spade = "♠"
        case heart = "❤️"
        case diamond = "🔷"
        case club = "♣"
    }
    
}

func generateDeckOfCards() -> [Card]{
    var myDeckOfCards: Array = [Card]()
    let maxRank = Card.Rank.Ace.rawValue
    let aSuit:Array = [Card.Suit.club.rawValue, Card.Suit.diamond.rawValue, Card.Suit.heart.rawValue, Card.Suit.spade.rawValue]
    
    for count in 2...maxRank{
        for suit in aSuit{
            let aRank = Card.Rank.init(rawValue: count)
            let aSuit = Card.Suit.init(rawValue: suit)
            let myCard = Card(rank: aRank!, suit: aSuit!)
            myDeckOfCards.append(myCard)
            
            
        }
    }
    
    return myDeckOfCards
}

var deckOne = generateDeckOfCards()
var singleCard = deckOne[51]

func cardsInfo(playingCard:Card) ->(name: String, emoji: String, Points: Int){
    let description = playingCard.rank.rankDescription()
    let myEmoji = playingCard.suit.rawValue
    let cardPoints = playingCard.rank.cardsValue()
    let card = (description,myEmoji,cardPoints)
    return  card
}

var theCard = cardsInfo(playingCard: singleCard)
theCard.name
theCard.emoji
theCard.Points
}
