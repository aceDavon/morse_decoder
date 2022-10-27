MORSE_CODE = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  ' ' => ' ',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

def decode_letter(morse_letter)
  MORSE_CODE[morse_letter].upcase
end

def decode_word(morse_word)
  str = ''
  morse_word.split.each { |words| str += decode_letter(words) }
  str
end

def decode_sentence(morse_sentence)
  str = ''
  words = morse_sentence.split('   ')
  words.each { |sentence| str += "#{decode_word(sentence)} " }
  str.strip
end

# Tests
puts decode_letter('-.-') #=> K
puts decode_word('-- .. -.-. .-. --- ...- . .-. ... .') # => MICROVERSE
puts decode_sentence('-- -.--   -. .- -- .') # => MY NAME
sentence = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode_sentence(sentence) # => A BOX FULL OF RUBIES
