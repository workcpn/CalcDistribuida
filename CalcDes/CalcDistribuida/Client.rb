# iniciamos a biblioteca
require 'drb'
 
# guardamos na variável o objeto disponível no servidor

# acessamos o método disponível no servidor
puts "entre com o primeiro valor"
@valor1 = Integer(gets.chomp)
puts "entre com a operação (+):1 (-):2 (*):3 (/):4 "
@operacao = Integer(gets.chomp)
puts "entre com o segundo valor"
@valor2 = Integer(gets.chomp)

if @operacao == 1
  addition = DRbObject.new nil, "druby://localhost:8780"
  addition.add(@valor1,@valor2 )
  puts "Resultado Adicao: #{addition.result}"
elsif @operacao == 2
  subtraction = DRbObject.new nil, "druby://localhost:8781"
  subtraction.sub(@valor1,@valor2 )
  puts "Resultado subitracao: #{subtraction.result}"
elsif @operacao == 3
  multiplication = DRbObject.new nil, "druby://localhost:8782"
  multiplication.mul(@valor1,@valor2 )
  puts "Resultado multiplicacao: #{multiplication.result}"
elsif @operacao == 4
  division = DRbObject.new nil, "druby://localhost:8783"
  division.div(@valor1,@valor2  )
  puts "Resultado divisao: #{division.result}"
end
 
# mostramos na tela o resultado