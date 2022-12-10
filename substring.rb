dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substring(string, dictionary)
  string.downcase! # makes entered string downcase for case insensitive

  string.split.reduce(Hash.new(0)) do |result, word|
    dictionary.each {|element| result[word] += 1 if element.include?(word) } #iterates each word from reduce to check if word exists in dictionary, if it does, the key of the word has 1 added to its value.
    result #returned value of reduce
  end
end


answer = substring("Lets go down low below", dictionary)
puts answer
