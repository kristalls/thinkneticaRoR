vowels = ["a", "e", "i", "o", "u", "y"]
alphabet = ("a".."z").to_a
vowels_hash = {}

vowels.each { |letter| vowels_hash[letter] = alphabet.index(letter) + 1 }

puts vowels_hash
