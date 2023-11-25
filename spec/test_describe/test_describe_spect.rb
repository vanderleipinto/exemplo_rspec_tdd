# aqui temos describe description. nesse caso ele tá pegando description como string e usando como subject
# logo o subject que está sendo testado é 'description'
describe 'description' do 
  it 'String' do
    str = 'jackson'
    expect(subject.size).to eq(11)
  end
end