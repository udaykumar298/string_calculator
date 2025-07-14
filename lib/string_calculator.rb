class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      numbers = numbers.gsub(delimiter, ",")
    end

    numbers = numbers.gsub("\n", ",")
    nums = numbers.split(",").map(&:to_i)

    negatives = nums.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(",")}" unless negatives.empty?

    nums.sum
  end
end
