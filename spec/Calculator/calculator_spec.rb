require "calculator"
describe Calculator, "uma calculadora que calcula" do
  
  #Para verificar erros temos duas possibilidades. A primeira verifica o erro de exception
  #O console vai mostra uma mensagem informando que raise_exception é muito genérico.
  context '#div' do
    it 'divide by 0' do
      expect {subject.div(3,0)}.to raise_exception
    end

    #Para um erro mais específico, usamos o raise_error(tipo_do_erro ou 'mensagem de erro'). Essa mensagem aparece no WARNING
    #WARNING: ...Actual error raised was #<ZeroDivisionError: divided by 0>...
    #Ou pode usar os 2 juntos ou expressão regular
    it 'divide by 0' do
      expect {subject.div(3,0)}.to raise_error(ZeroDivisionError)
      expect {subject.div(3,0)}.to raise_error("divided by 0")
      expect {subject.div(3,0)}.to raise_error(ZeroDivisionError,"divided by 0")
      expect {subject.div(3,0)}.to raise_error(/divided/)
    end

    #
  end


  
  context "#sum" do
    it 'use sum method' do
      calc = Calculator.new
      result = calc.sum(5,7)
      expect(result).to eq (12)
    end

    specify 'with negative numbers' do
      calc = Calculator.new
      result = calc.sum(-5,7)
      expect(result).to eq (2)
    end

    example 'with two negative numbers' do
      calc = Calculator.new
      result = calc.sum(-5,-7)
      expect(result).to eq (-12)
    end
  end
end
