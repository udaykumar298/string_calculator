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

  it 'returns the sum of numbers with newline (\n) as delimiter along with comma' do
    expect(StringCalculator.add("1\n2,3")).to eq(6)
  end
  it 'returns the sum of multiple numbers with newline (\n) as delimiter along with custom delimiter' do
    expect(StringCalculator.add("//;\n1;2")).to eq(3)
  end

  it 'raises an exception for negative numbers' do
    expect { StringCalculator.add("1,-2,3,-4") }.to raise_error("negative numbers not allowed -2,-4")
  end
end