$alphabet = Array.new
$encrypted_text = Array.new
("a".."z").map {|letter| $alphabet.push(letter)}

def caesars_cipher(word, shift)
  word.each_char {|letter|
    if  letter.match(/[A-Z]/)
      new_index =  $alphabet.find_index(letter.downcase) + shift
      new_index > 26 ? new_index -= 26 : new_index
      $encrypted_text.push($alphabet[new_index].upcase)
    elsif letter.match(/[a-z]/)
      new_index =  $alphabet.find_index(letter) + shift
      new_index > 26 ? new_index -= 26 : new_index
      $encrypted_text.push($alphabet[new_index])
    else
      $encrypted_text.push(letter)
    end
  }
  puts $encrypted_text.join("")
  $encrypted_text.clear
end

caesars_cipher("What a string!", 5)
