class StringCalculator
  def self.add(input_string)
    return 0 if input_string.empty?

    delimiters = [","]
    number_string = input_string
    
    if input_string.start_with?("//")
      if input_string[2] == "["
        delimiters = []
        remaining = input_string[2..-1]

        while remaining.include?("[")
          index = remaining.index("]")
          delimiters << remaining[1..index-1]
          remaining = remaining[index+1..-1]
        end
        number_string = remaining
      else
        delimiters = [input_string[2]]
        number_string = input_string[3..-1]
      end
    end

    result = number_string.gsub("\n", ",")
    delimiters.each do |delimiter|
      result = result.gsub(delimiter, ",")
    end

    number_array = result.split(",").map(&:to_i).reject{ |number| number > 1000 }

    negative_numbers = number_array.select { |number| number < 0 }
    raise "negative numbers not allowed #{negative_numbers.join(",")}" if negative_numbers.any?

    number_array.sum
  end
end