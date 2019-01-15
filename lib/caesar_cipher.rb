def caesar_cipher(string, my_shift)
  alphabet  = Array('a'..'z') # stock un tableau de lettres minuscules dans la variable alphabet
  non_caps  = Hash[alphabet.zip(alphabet.rotate(my_shift))] # on fait la rotation
  
  alphabet = Array('A'..'Z') # stock un tableau de lettres majuscules dans la variable alphabet
  caps     = Hash[alphabet.zip(alphabet.rotate(my_shift))] # on fait la rotation
  
  encrypter = non_caps.merge(caps) # on merge les deux tableaux
  
  string.chars.map { |c| encrypter.fetch(c, c) } # pour chacun des caractères de la string, on lance l'encrypter / fetch retourne une valeur du hash
end

# join is missing in order to be right
# caesar_cipher("What a string!", 5).join