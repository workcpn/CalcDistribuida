require 'drb'
 
# uma classe que incrementa a variável 'valor'
class Division
  attr_reader :result
 
  def initialize
    @result = 0
  end
 
  def div(val1, val2)
    @result = val1/val2
  end

end
 
# inicia o serviço, informando endereço e objeto disponível
DRb.start_service "druby://localhost:8783", Division.new
puts "Rodando o servidor de subitração no '#{DRb.uri}'"
 
# mantém o serviço rodando, não deixa o DRb fechar
DRb.thread.join