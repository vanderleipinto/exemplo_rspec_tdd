describe 'all' do
  it { expect([1,7,9]).to all (be_odd)}
  it { expect(['ruby','rails']).to all ( be_a(String).or include('r'))}
  
end