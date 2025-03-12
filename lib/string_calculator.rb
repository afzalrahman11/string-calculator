class StringCalculator
  def self.add(input)
    input.gsub("\n", ",").split(",").inject(0) do |sum, number|
      sum + number.to_i
    end
  end
end