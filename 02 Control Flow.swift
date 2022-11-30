//
//  02 Control Flow.swift
//  
//
//  Created by baus on 30.11.2022.
//

// Use if and switch to make conditionals, and
// use for-in, while, and repeat-while to make loops.

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)
