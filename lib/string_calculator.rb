class StringCalculator
  def self.add(input)
    input.split(",").inject(0) do |sum, number|
      sum + number.to_i
    end
  end
end