def search(texto, subTexto)
  tam_texto = texto.length
  tam_subTexto = subTexto.length
  lista = []
  for i in (0..tam_texto)
    if texto[i..i+tam_subTexto-1].eql?(subTexto)
      lista << ("A SubString '#{subTexto.upcase}' esta entra as posicoes: #{i}..#{i+tam_subTexto-1}")
    end
  end
  return lista
end

result = search("Joao foi na padaria comprar sabao", "ao")

if result.length > 0
  puts result
else
  puts "SubString nao foi encontrada"
end