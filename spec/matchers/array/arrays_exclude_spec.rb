RSpec::Matchers.define_negated_matcher :exclude, :include
RSpec::Matchers.define_negated_matcher :be_not_within, :be_within

describe [1,2,3] do
 

  it{expect(subject).to exclude(4)}
  it{expect(11.4).to be_not_within(0.5).of(12)}
  
end