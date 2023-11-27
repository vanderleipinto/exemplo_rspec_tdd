require 'pessoa'



describe 'Atributos' do

  before(:each) do
    puts "______ Antes de cada teste dentro do arquivo de teste_____"
  end
  after(:each) do
    puts "______ Depois de cada teste dentro do arquivo de teste_____"
  end

  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = "Jackson"
    pessoa.idade = 20
    expect(pessoa).to have_attributes(nome: "Jackson", idade: 20 )
  end

  
  it 'have_specific_attributes' do
  pessoa = Pessoa.new
    pessoa.nome = "Jackson"
    pessoa.idade = 40
    expect(pessoa).to have_attributes(:nome => starting_with("J"), idade: (a_value>30))
  end
end