//
//  SNGuideViewModel.swift
//  Sports national riddles
//
//

import SwiftUI

final class SNGuideViewModel: ObservableObject {
    let guides: [Guide] = [
        Guide(image: "image 4", name: "Football", country: "England", description: "Team sport played with a ball where players try to score goals into the opponent’s net"),
        Guide(image: "image 4-1", name: "Basketball", country: "USA", description: "Team game where players score points by throwing the ball into a hoop"),
        Guide(image: "image 4-2", name: "Tennis", country: "France", description: "Players use rackets to hit a ball over a net to score points"),
        Guide(image: "image 4-3", name: "Baseball", country: "USA", description: "Bat-and-ball game where players score by running between bases"),
        Guide(image: "image 4-4", name: "Hockey", country: "Canada", description: "Fast team sport played on ice where players shoot a puck into a goal"),
        
        Guide(image: "image 4-5", name: "Volleyball", country: "USA", description: "Teams hit a ball over a net trying to score points"),
        Guide(image: "image 4-6", name: "Rugby", country: "England", description: "Physical team sport where players carry the ball to score"),
        Guide(image: "image 4-7", name: "Golf", country: "Scotland", description: "Players try to hit a ball into a hole using the fewest shots"),
        Guide(image: "image 4-8", name: "Boxing", country: "England", description: "Combat sport where fighters try to win by points or knockout"),
        Guide(image: "image 4-9", name: "Swimming", country: "England", description: "Racing sport where athletes compete in water"),
        
        Guide(image: "image 4-10", name: "Skiing", country: "Norway", description: "Winter sport where athletes slide down snowy slopes using skis"),
        Guide(image: "image 4-11", name: "Snowboarding", country: "USA", description: "Winter sport where riders descend slopes standing on a snowboard"),
        Guide(image: "image 4-12", name: "Cycling", country: "France", description: "Sport where athletes race using bicycles on roads or tracks"),
        Guide(image: "image 4-13", name: "Table Tennis", country: "England", description: "Players hit a small ball across a table using paddles"),
        Guide(image: "image 4-14", name: "Badminton", country: "India", description: "Players hit a shuttlecock over a net using rackets"),
        
        Guide(image: "image 4-15", name: "Cricket", country: "England", description: "Bat-and-ball game where teams score runs by hitting the ball"),
        Guide(image: "image 4-16", name: "Handball", country: "Germany", description: "Team sport where players throw a ball into a goal using hands"),
        Guide(image: "image 4-17", name: "Bowling", country: "USA", description: "Players roll a ball to knock down pins"),
        Guide(image: "image 4-18", name: "Fencing", country: "France", description: "Combat sport where opponents score points using swords"),
        Guide(image: "image 4-19", name: "Archery", country: "Mongolia", description: "Sport where athletes shoot arrows at a target"),
        
        Guide(image: "image 4-20", name: "Surfing", country: "USA", description: "Water sport where athletes ride ocean waves on a board"),
        Guide(image: "image 4-21", name: "Skateboarding", country: "USA", description: "Sport where riders perform tricks on a skateboard"),
        Guide(image: "image 4-22", name: "Weightlifting", country: "Greece", description: "Strength sport where athletes lift heavy barbells"),
        Guide(image: "image 4-23", name: "Gymnastics", country: "Greece", description: "Sport involving strength, balance and flexibility routines"),
        Guide(image: "image 4-24", name: "Wrestling", country: "Greece", description: "Combat sport where athletes try to control and pin the opponent"),
        
        Guide(image: "image 4-25", name: "Judo", country: "Japan", description: "Martial art focused on throws and grappling techniques"),
        Guide(image: "image 4-26", name: "Karate", country: "Japan", description: "Martial art focused on strikes, blocks and forms"),
        Guide(image: "image 4-27", name: "American Football", country: "USA", description: "Team sport where players advance the ball to score touchdowns"),
        Guide(image: "image 4-28", name: "Horse Riding", country: "England", description: "Sport involving riding and controlling a horse in competitions"),
        Guide(image: "image 4-29", name: "Ice Skating", country: "Netherlands", description: "Sport where athletes perform or race on ice using skates"),
        
    ]
}

struct Guide {
    var image: String
    var name: String
    var country: String
    var description: String
}
