# String Calculator TDD Kata

This is an implementation of the String Calculator TDD Kata in Ruby, using RSpec for testing.

**Author:** Afzal Rahman A

## Requirements

The kata requires building a String Calculator with an `add` method that takes a string of comma-separated numbers and returns their sum.

Tests should be written for the following:

1. It should return 0 for an empty string "".
  ![String Calculator](images/empty_string.png)

2. It should return the number for a single number:
  ![String Calculator](images/single_number_string.png)

3. It should return the sum of numbers for a string of multiple numbers:
  ![String Calculator](images/multiple_numbers_string.png)

4. It should handle new lines between numbers instead of commas:
  ![String Calculator](images/new_line_string.png)

5. It should support different delimiters:
  ![String Calculator](images/different_delimiters_string.png)

6. It should throw an exception for negative numbers:
  ![String Calculator](images/negative_numbers_string.png)

7. It should ignore numbers greater than 1000:
  ![String Calculator](images/ignore_numbers_greater_than_1000.png)

8. It should support delimiters of any length:
  ![String Calculator](images/delimiters_of_any_length.png)

9. It should handle multiple delimiters with the same length:
  ![String Calculator](images/multiple_delimiters_same_length_string.png)

10. It should handle multiple delimiters with different lengths:
   ![String Calculator](images/multiple_delimiters_different_length_string.png)

## Setup

### Prerequisites

- Ruby (version used - 3.2.2)
- RSpec (version used - 3.13)

### Installation & Running the Tests

1. Clone the repository.
2. Install dependencies.
3. Navigate to the string-calculator directory.
4. To run the tests, execute:
  ```bash
  rspec
  ```
