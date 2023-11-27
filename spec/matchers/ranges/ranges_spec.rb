describe (1..10), 'Ranges' do
  xit '#cover' do
    expect(subject).to cover(2)
  end  

  xit '#cover' do
    is_expected.to cover(2,7)
  end

  xit 'not to #cover' do
    expect(subject).not_to cover(0,11)
  end

  #One-liner Syntax (Subject)
  #os exemplos acima serão reescritos usando one-liner syntax, onde expect(subject) == is_expected


  it {is_expected.to cover(2)}
  it {is_expected.to cover(7,2)}
  it {is_expected.not_to cover(11)}

end