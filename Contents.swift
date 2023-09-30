//Task 1

var numbers = [4, 8, 10, 12, 14]

if numbers.count >= 2 {
    let firstDigit = numbers[0]
    let lastDigit = numbers[numbers.count - 1]
    
    numbers[0] = lastDigit
    numbers[numbers.count - 1] = firstDigit
}

print(numbers)

//second version:

var names = ["Ani", "Elene", "Lana"]

if names.count >= 2 {
    (names[0], names[names.count - 1]) = (names[names.count - 1], names[0])
}

print(names)

//Task 2

//odd
var fruits = ["Apple", "Banana", "Peach", "Orange", "Pear", "Cherry", "Melon"]

if fruits.count >= 4 {
    fruits.removeSubrange(1..<5)
}

print(fruits)

//even
var numberss = [1, 2, 3, 4]

let splitIndex = numberss.count / 2

if numberss.count > 0 {
    numberss.removeSubrange(splitIndex..<numberss.count)
}

print(numberss)

//Task 3

var numbersss = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var evenNumbersss: [Int] = []
var oddNumbersss: [Int] = []

for number in numbersss {
    if number % 2 == 0 {
        evenNumbersss.append(number)
    } else {
        oddNumbersss.append(number)
    }
}

    print("Even Numbers: \(evenNumbersss)")
    print("Odd Numbers: \(oddNumbersss)")

//Task 4

var doubleNumbers = [0.1, 0.2, 0.3, 0.4, 0.5]
var max = doubleNumbers [0]

for number in doubleNumbers {
    if number > max {
       max = number
    }
}
print(max)

//Task 5

var arrayFirst = [8, 4, 9, 9, 0, 2]
var arraySecond = [1, 0, 9, 2, 3, 7, 0, 1]
var array = arrayFirst + arraySecond

func bubbleSort(_ array: inout [Int]) {
    for i in 0..<array.count {
        for j in 0..<array.count - 1 - i {
            if array[j] > array[j + 1] {
                let temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
        }
    }
}

bubbleSort(&array)

print(array)

//Task 6

var object: Set = ["chair"]
let hasDuplicates = object.count != Set(object).count

if hasDuplicates {
    print("The set '\(object))' contains duplicate characters.")
} else {
    print("The set '\(object)' does not contain duplicate characters.")
}


//Task 7

var A: Set = [1, 2, 3, 4, 5]
var B: Set = [4, 5, 6, 7, 8]

let union = A.union(B)
print(union)

let intersection = A.intersection(B)
print(intersection)

let difference = A.subtracting(B)
print(difference)

//Task 8

var first: Set = ["a", "b"]
var second: Set = ["a", "b", "c"]

if first.isSubset(of: second) {
    print("setA is a subset of setB")
} else {
    print("setA is not a subset of setB")
}

//Task 9

let arrayy = ["cat", "dog", "cat"]
let set = Set([array])

if set.count != arrayy.count {
    print("contains duplicates")
} else {
    print("does not contain duplicates")
}

//Task 10

var moviesDictionary = [
    "Eyes Wide Shut": 7.5,
    "Cinema Paraiso": 9.0,
    "The Silence of the Lambs": 8.6,
    "La Grande Bellezza": 7.7,
    "American Beauty": 8.3,
    "Psycho": 8.5,
    "The Will Be Blood": 8.2,
    "The Prestige": 8.5
]
var totalRating = 0.0

for rating in moviesDictionary.values {
    totalRating += rating
}

let averageRating = totalRating / Double(moviesDictionary.count)

print("The average rating of the movies is: \(averageRating)")
