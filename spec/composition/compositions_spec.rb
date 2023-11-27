#todas essas linhas foram movidas para spec_helper.rb
# require_relative 'helper'

# RSpec.configure do |conf|
#   conf.include Helper
# end

describe "Ruby on Rails" do
  it {is_expected.to starting_with('Ruby').and end_with('Rails')}

  it {is_expected.to starting_with('Ruby').or end_with('Rdial')}
  it {expect(fruta).to eq('banana').or eq('abacate').or eq('uva')}

  
  # def fruta #helper method arbitrário
  #   %w(banana laranja uva).sample
  # end
end