describe 'Classes' do
  
  it 'be_instance_of - exatamente a classe' do
    expect(10).to be_instance_of(Integer)
  end

  it 'be_kind_of - pode ser instância ou herança' do
    expect(10).to be_kind_of(Integer)
  end

  it 'respond_to - atende ao método' do
    expect(10).to respond_to(:odd?)
    expect('ruby').to respond_to(:count)
  end

  xit 'be_kind_of' do
    expect(10).to be_(Integer)
  end

  xit 'be_a' do
    expect(10).to be_a(Integer)
  end

  xit 'be_a' do
    expect(10).to be_a(Integer)
  end

  

end