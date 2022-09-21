def decode_char(code)
  morse_hash = { '.-' => 'A',
                 '-...' => 'B',
                 '-.-.' => 'c',
                 '-..' => 'D',
                 '.' => 'E',
                 '..-.' => 'F',
                 '--.' => 'G',
                 '....' => 'H',
                 '..' => 'I',
                 '.---' => 'J',
                 '-.-' => 'K',
                 '.-..' => 'L',
                 '--' => 'M',
                 '-.' => 'N',
                 '---' => 'O',
                 '.--.' => 'P',
                 '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
                 '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }
  morse_hash[code]
end

def decode_word(morse)
  word = ''
  morse.split.each do |code|
    word += decode_char(code)
  end
  word
end

def decode(statement)
  sentence = ''
  statement.split('   ').each do |word|
    sentence += " #{decode_word(word)}"
  end
  sentence
end

puts(decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
