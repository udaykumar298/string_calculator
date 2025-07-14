require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  it 'returns 0 for an empty string' do
    expect(StringCalculator.add("")).to eq(0)
  end

  it 'returns the sum of a single number' do
    expect(StringCalculator.add("1")).to eq(1)
  end

  it 'returns the sum of two numbers' do
    expect(StringCalculator.add("1,5")).to eq(6)
  end  
end