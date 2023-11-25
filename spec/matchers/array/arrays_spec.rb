describe [1,2,3] do
  it 'Array to #include 2 and 1' do
    expect(subject).to include(2,1)
  end
  
  it 'Array to #contain_exactly' do
    expect(subject).to contain_exactly(1,3,2)
  end
  
  it 'Array to #match array [1,2]' do
  expect(subject).to match_array([1,2,3])
  end
end