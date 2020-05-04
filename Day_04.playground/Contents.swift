/*
 Day 4 – loops, loops, and more loops
 */

import UIKit

// MARK: - For loops – test
let count = 1...10
for number in count {
    print("Number is: \(number)")
}

let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("album: \(album)")
}


// MARK: - While loops – test
// MARK: - Repeat loops – test
var number = 1
repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I came!")

while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false


// MARK: - Exiting loops – test
var countDown = 10
while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}

print("Blast off!")


// MARK: - Exiting multiple loops – test
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        if product == 45 {
            print("It's a bullseye!")
            break
        }
    }
}

a: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        if product == 45 {
            print("It's a bullseye!")
            break a
        }
    }
}


// MARK: - Skipping items – test
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}


// MARK: - Infinite loops – test
var counter  = 0
while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}



// MARK: - Looping summary – test
/*
 You’ve made it to the end of the fourth part of this series, so let’s summarize:

1. Loops let us repeat code until a condition is false.
2. The most common loop is for, which assigns each item inside the loop to a temporary constant.
3. If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
4. There are while loops, which you provide with an explicit condition to check.
5. Although they are similar to while loops, repeat loops always run the body of their loop at least once.
6. You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
7. You can skip items in a loop using continue.
8. Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!
 
 */
