# 1. "ABC" com parametro 3
# 2. O Resultado esperado tem que ser a letra 3 casas antes da
# letra inicial
# X	Y	Z

# 0. Antes de codificar, precisamos de uma lista com as letras do alfabeto
# 1. Passar por cada caractere da frase, e achamos seus indice especifico
# 2. Após achar o seu indice corresponde, subtraimos o no valor a ser "rotacionado"
# 3. Com o valor novo de "rotacao", buscamos na lista do alfabeto, qual o valor correspondente.
# 4. Retornar o texto modificado.

def cypher(string, shift = 0)
  return "" if string.class != String

  alphabet = ("A".."Z").to_a

  new_phrase = string.each_char.map do |letter|
    if alphabet.include?(letter)
      position_in_alphabet = alphabet.index(letter)
      new_position = (position_in_alphabet - shift)
      letter = alphabet[new_position]
    else
      letter
    end
  end

  new_phrase.join("")
end

puts cypher("THE QUICK BROWN, FOX JUMPS OVER THE LAZY DOG")
