def sum_of_3_or_5_multiples(n)
  unless n.is_a?(Integer) && n >= 0
    return "Yo ! Je ne prends que les entiers naturels. TG"
  else
    sum = 0
    laps = 0 # cette boucle indente à chaque tour une variable (par exemple i)
    while laps < n # lancement d'une boucle qui va de 0 au chiffre n EXCLU (car on est sur du strictement inférieur)
      if is_multiple_of_3_or_5(laps) == true
        sum = sum + laps # si la réponse est "true", alors je rajoute la valeur de i à une somme que je retournerais en fin de fonction (mon return final).
      else
        sum = sum # si la réponse est "false"…ben y a pas de else. Si i n'est pas multiple, on passe au i suivant.
      end 
      laps = laps + 1 #fin de la boucle
    end
    return sum
  end
end

def is_multiple_of_3_or_5(laps)
  if laps % 3 == 0 || laps % 5 == 0
    return true
  else
    return false
  end
end