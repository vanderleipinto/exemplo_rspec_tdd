require "calculator"
describe Calculator, "uma calculadora que calcula" do
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
