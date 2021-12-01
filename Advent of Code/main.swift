//
//  main.swift
//  No rights reserved.
//

import Foundation
import RegexHelper

func main() {
    let fileUrl = URL(fileURLWithPath: "./aoc-input")
    guard let inputString = try? String(contentsOf: fileUrl, encoding: .utf8) else { fatalError("Invalid input") }
    
    let lines = inputString.components(separatedBy: "\n")
        .filter { !$0.isEmpty }
        .map { Int($0)! }

    var increased = 0
    for i in 1 ..< lines.count {
        if lines[i] > lines[i-1] {
            increased += 1
        }
    }
    print(increased)
}

func main2() { // doh
    let fileUrl = URL(fileURLWithPath: "./aoc-input")
    guard let inputString = try? String(contentsOf: fileUrl, encoding: .utf8) else { fatalError("Invalid input") }
    
    let lines = inputString.components(separatedBy: "\n")
        .filter { !$0.isEmpty }
        .map { Int($0)! }
    
    var slidingWindows = [Int]()
    for i in 0 ... lines.count - 3 {
        slidingWindows.append(lines[i] + lines[i+1] + lines[i+2])
    }
    
    var increased = 0
    for i in 1 ..< slidingWindows.count {
        if slidingWindows[i] > slidingWindows[i-1] {
            increased += 1
        }
    }
    print(increased)
}

main()
main2()
