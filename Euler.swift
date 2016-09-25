//
//  Euler.swift
//  Euler
//
//  Created by Dan Esrey on 2016/21/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import Foundation


let numbers = Array(0...100)
//Euler problem 1
func multiples(upperRange: Int) -> Int {
    let potentials = Array(3..<upperRange)
    var listOfMultiples: [Int] = []
    var sum = 0
    
    for number in potentials {
        if (number % 3 == 0 || number % 5 == 0) {
            listOfMultiples.append(number)
            sum = sum + number
        }
    }
    return sum
}

//Euler prob 3 part 1
func primes(upperBound: Int) -> [Int] {
    var possibilities = Array(0..<upperBound)
    
    var listOfPrimes: [Int] = []
    
    while !possibilities.isEmpty {
        let thisPrime = possibilities.first!
        listOfPrimes.append(possibilities.first!)
        possibilities.remove(at: possibilities.startIndex)
        possibilities = possibilities.filter { item in
            item % thisPrime != 0
        }
    }
    return listOfPrimes
}

//Euler prob 3 part 2
func factors(listOfPrimes:[Int], numberToFactor:(Int))->[Int] {
    var listOfFactors: [Int] = []
    for primeNumber in listOfPrimes {
        if (numberToFactor % primeNumber == 0) {
            listOfFactors.append(primeNumber)
        }
    }
    return listOfFactors
}


//Euler prob 6 part 1
public func squareOfSums(_: [Int])->Int{
    var sum: Int = 0
    var squareOfSum: Int = 0
    for number in numbers {
        sum = sum + number
        squareOfSum = (sum * sum)
    }
    return squareOfSum
}

//Euler prob 6 part 2
public func sumOfSquares(_: [Int])->Int{
    var square: Int = 0
    var sumOfSquares: Int = 0
    for number in numbers {
        square = number * number
        sumOfSquares = sumOfSquares + square
    }
    return sumOfSquares
}

//Euler prob 6 part 3
public func diffOfSums(_ squareOfSums: Int, _ sumOfSquares: Int)->Int{
    var diff: Int = 0
    diff = squareOfSums - sumOfSquares
    return diff
}

//Euler problem 10
public func sumOfPrimes (_: [Int])->Int{
    var sum: Int = 0
    for prime in primeNumbers {
        sum = sum + prime
    }
    return sum
}

let primeNumbers = primes(upperBound: 2000000)
