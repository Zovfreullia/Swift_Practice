//: [Previous](@previous)

//: ## Inspecting & Comparing Sets

// Set are unordered containers used to store unique values
// of the same type. Set values must be hashable.

var trainers = Set<String>()


var pokemon: Set = ["Charmander", "Bulbasaur", "Charizard", "Venosaur", "Squirtle", "Charmander"]


trainers.isEmpty
pokemon.count


// create an array of pokemon from the set
var arrayOfPokemon = Array(pokemon)
arrayOfPokemon.sortInPlace()

pokemon.contains("Charmander")

// set has the contains method for that purpose which returns
// a boolean if the set contains the value past n as its parameter.


var pokemonInHospital: Set = ["Charmander", "Charizard", "Squirtle"]

// true because all of pokemonInHospital values are in pokemon
pokemonInHospital.isSubsetOf(pokemon)

// true because all the receiver's value are in the past set values
// and they are not exact copies
pokemonInHospital.isStrictSubsetOf(pokemon)

// true - pokemon contains all of the values in pokemonInHospital
pokemon.isSupersetOf(pokemonInHospital)

// true - pokemon contains all of the values in pokemonInHospital
// and is not an exact copy
pokemon.isStrictSupersetOf(pokemonInHospital)

// if there are no common values -- returns false
pokemonInHospital.isDisjointWith(pokemon)




//: [Next](@next)
