require 'pessoa'

describe 'Pessoa' do 
  subject(:pessoa) {Pessoa.new}

  pessoa.feliz!
  
  it 'feliz!' do 
    pessoa.feliz!
    expect(pessoa.status).to eq ("Sentindo-se Feliz!")
  end
  
  it 'triste!' do 
    pessoa.triste!
    expect(pessoa.status).to eq ("Sentindo-se Triste!")
  end

end