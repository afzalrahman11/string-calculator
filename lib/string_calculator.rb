class StringCalculator
  def self.add(input)

    if input.start_with?("//")
      delimiter = input[2]
      input = input[4..-1].gsub(delimiter, ",")
    end

    input.gsub("\n", ",").split(",").inject(0) do |sum, number|
      sum + number.to_i
    end
  end
end