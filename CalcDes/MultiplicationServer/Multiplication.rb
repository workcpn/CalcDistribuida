require 'drb'
 
# uma classe que incrementa a variável 'valor'
class Multiplication
  attr_reader :result
 
  def initialize
    @result = 0
  end
 
  def mul(val1, val2)
    @result = val1*val2
  end

end
 
# inicia o serviço, informando endereço e objeto disponível
DRb.start_service "druby://localhost:8782", Multiplication.new
puts "Rodando o servidor de multiplicação no '#{DRb.uri}'"
 
# mantém o serviço rodando, não deixa o DRb fechar
DRb.thread.join