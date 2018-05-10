def da_boas_vindas
    puts "Bem Vindo ao Jogo da Adivinhação"
    puts "\n"
    puts "Qual é o seu nome?"
    nome = gets
    puts "Vamos começar o jogo para você #{nome}"
    puts "\n"
end

da_boas_vindas

puts "Escolha um numero de 0 a 200"
numero_secreto = 175
puts "Escolheu o numero, que tal adivinhar nosso numero secreto."
puts "\n\n"

limite_de_tentativas = 5

for tentativa in 1.. limite_de_tentativas

puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s 
chute = gets
puts "Será que você acertou? O numero que você chutou foi " + chute
puts "\n"
acertou = numero_secreto == chute.to_i

if acertou
    puts "Parabéns você acertou!"
    break
    else 
        maior = numero_secreto > chute.to_i
        if maior
            puts "O número é maior"
        else
            puts "O número é menor"
        end
end
end

#2.8 2