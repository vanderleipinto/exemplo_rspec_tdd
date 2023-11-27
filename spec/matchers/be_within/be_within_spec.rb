describe 'be_within' do
  it {expect(12.4).to be_within(0.5).of(12)}
  it {expect([12.4, 12.1, 11.7]).to all (be_within(0.5).of(12))}
end

# espera-se que a partir de 12, o valor 12.5 esteja dentro de uma margem de 0.5 para mais ou para menos
# chamado de delta 0.5