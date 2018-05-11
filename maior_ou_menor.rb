def da_boas_vindas
    puts "Bem Vindo ao Jogo da Adivinhação"
    puts "\n"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "Vamos começar o jogo para você #{nome}"
    puts "\n"
end

def sorteia_numero_secreto
    puts "Escolha um numero de 0 a 200"
    sorteado = 175
    puts "Escolheu o numero, que tal adivinhar nosso numero secreto."
    puts "\n\n"
    sorteado
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
    puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
    puts "Chutes até agora: #{chutes}"
    chute = gets.strip
    puts "Será que você acertou? O numero que você chutou foi #{chute}"
    puts "\n"
    chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute
    if acertou
        puts "Parabéns você acertou!"
        return true
        else 
                maior = numero_secreto > chute

            if maior
                puts "O número é maior"
                return false
            else
                puts "O número é menor"
                return false
            end
    end
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5
chutes = []


for tentativa in 1.. limite_de_tentativas
    

    chute = pede_um_numero(chutes, tentativa, limite_de_tentativas)
    chutes << chute
    
    if verifica_se_acertou( numero_secreto, chute)
        break
    end
end

#arrays 10