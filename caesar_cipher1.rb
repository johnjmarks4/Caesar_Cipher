def caesar_cipher(string, shift)
  string = string.downcase
	string = string.split("")
	alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
	x = 0
	container = []
	string.each do |letter|
	  if letter == "!"
	    container.push("!")
	  else
		  x = alphabet.index(letter)
		  puts x
		  if x != nil
		    x += shift
		    if x > 26
		      x -= 26
		    end
		  letter = alphabet[x]
		  container.push(letter)
		  end
		end
		if letter == " "
		 	container.push(" ")
		end
		string = container.join("")
		string = string.capitalize
	end
	return string
end