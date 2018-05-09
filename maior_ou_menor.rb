puts "Bem Vindo ao Jogo da Adivinhação"
puts "\n"
puts "Qual é o seu nome?"
nome = gets
puts "Vamos começar o jogo para você #{nome}"
puts "\n"
puts "Escolha um numero de 0 a 200"
numero_secreto = 175
puts "Escolheu o numero, que tal adivinhar nosso numero secreto."
puts "\n\n"
puts "1 tentativa, digite o numero"
chute = gets
puts "Será que você acertou? O numero que você chutou foi " + chute
puts 175 == chute.to_i
