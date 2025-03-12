class StringCalculator
  def self.add(input_string)
    return 0 if input_string.empty?

    delimiter = ","
    
    if input_string.start_with?("//")
      delimiter = input_string[2]
      input_string = input_string[4..-1]
    end

    number_array = input_string.gsub("\n", delimiter).split(delimiter).map(&:to_i).reject{ |number| number > 1000 }

    negative_numbers = number_array.select { |number| number < 0 }
    raise "negative numbers not allowed #{negative_numbers.join(",")}" if negative_numbers.any?

    number_array.sum
  end
end