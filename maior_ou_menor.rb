def da_boas_vindas
    puts "Bem Vindo ao Jogo da Adivinhação"
    puts "\n"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "Vamos começar o jogo para você #{nome}"
    puts "\n"
end

def pede_dificuldade
    puts "Qual nivel de dificuldade que você deseja jogar (1 -fácil, 5 - Díficil) "
    dificuldade = gets.to_i
end

def sorteia_numero_secreto (dificuldade)
    maximo = ????
    puts "Escolha um numero de 0 a #{maximo -1}..."
    sorteado = rand(maximo)
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
dificuldade = pede_dificuldade
numero_secreto = sorteia_numero_secreto dificuldade

pontos_ate_agora = 1000

limite_de_tentativas = 5
chutes = []


for tentativa in 1.. limite_de_tentativas
    

    chute = pede_um_numero(chutes, tentativa, limite_de_tentativas)
    chutes << chute

    pontos_a_perder = (chute - numero_secreto).abs / 2.0
    pontos_ate_agora -= pontos_a_perder
    
    if verifica_se_acertou( numero_secreto, chute)
        break
    end
end

puts "Você ganhou #{pontos_ate_agora} pontos."

#arrays 10