# StringCalculator is a utility class for adding numbers in a string.
class StringCalculator
  def self.add(input_string)
    return 0 if input_string.empty?

    delimiters, number_string = extract_delimiters_and_numbers(input_string)
    numbers = split_numbers(number_string, delimiters)
    validate_numbers(numbers)
    numbers.select { |number| number <= 1000 }.sum
  end

  private

  # Extracts delimiters and the number string from the input string.
  def self.extract_delimiters_and_numbers(input_string)
    if input_string.start_with?("//")
      custom_delimiters, number_string = parse_custom_delimiters(input_string)
      [custom_delimiters, number_string]
    else
      [[","], input_string]
    end
  end

  # Parses custom delimiters from the input string.
  def self.parse_custom_delimiters(input_string)
    if input_string[2] == "["
      delimiters = []
      remaining = input_string[2..-1]

      while remaining.include?("[")
        closing_bracket = remaining.index("]")
        delimiters << remaining[1...closing_bracket]
        remaining = remaining[(closing_bracket + 1)..-1]
      end
      [delimiters, remaining]
    else
      [[input_string[2]], input_string[3..-1]]
    end
  end

  # Splits the number string into an array of integers.
  def self.split_numbers(number_string, delimiters)
    delimiters.each do |delimiter|
      number_string = number_string.gsub(delimiter, ",")
    end
    number_string.gsub("\n", ",").split(",").map(&:to_i)
  end

  # Validates the numbers array, raising an error if any negative numbers are found.
  def self.validate_numbers(numbers)
    negative_numbers = numbers.select { |number| number < 0 }
    raise "negative numbers not allowed: #{negative_numbers.join(", ")}" if negative_numbers.any?
  end
end