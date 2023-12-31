describe 'Matchers de Igualdade' do
  it '#equal - Testa se é o mesmo objeto' do
  x = 'ruby'
  y = 'ruby'
  expect(x).not_to equal(y)
  expect(x).to eql(x)
  end

  it '#be - Testa se é o mesmo objeto, alternativa ao equal' do
  x = 'ruby'
  y = 'ruby'
  expect(x).not_to be(y)
  expect(x).to be(x)
  end

  it '#eql testa o valor/conteúdo, não o objeto' do
  x = 'ruby'
  y = 'ruby'
  
  expect(x).to eql(x)
  end

  
end