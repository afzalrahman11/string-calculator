require "string_calculator"

RSpec.describe StringCalculator do
  describe ".add" do
    context "given an empty string" do
      it "returns 0" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end
    context "given a single number" do
      it "returns the number" do
        expect(StringCalculator.add("5")).to eq(5)
      end
    end
    context "given multiple numbers" do
      it "returns the sum of the numbers" do
        expect(StringCalculator.add("1,2,3,14")).to eq(20)
      end
    end
    context "given numbers separated with newlines" do
      it "returns the sum of the numbers" do
        expect(StringCalculator.add("1\n2\n3")).to eq(6)
      end
    end
  end
end