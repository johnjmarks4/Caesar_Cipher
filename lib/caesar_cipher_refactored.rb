public

def lower_case
  ('a'..'z').to_a
end

def upper_case
  lower_case.map { |letter| letter.upcase }
end

def caesar_cipher(text, letters_moved)
  text.scan(/./) do |character|
    if upper_case.include?(character)
      character_index = upper_case.index(character) + letters_moved
      alphabet = upper_case
    elsif lower_case.include?(character)
      character_index = lower_case.index(character) + letters_moved
      alphabet = lower_case
    elsif character == " "
      character_index = 0
      alphabet = [" "]
    else
      return "That is not a valid character"
    end
    if character_index >= 26 then character_index -= 26
    end
    text.sub!(character, alphabet[character_index])
  end
end

caesar_cipher("Zello there", 1)