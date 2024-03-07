require_relative '../lib/Algoritmos/maximize_array'

RSpec.describe "maximize_array" do
  context "when array has positive and negative numbers" do
    it "returns the sum of elements after k modifications" do
      arr = [-2, 0, 5, -1, 2]
      k = 4
      expect(maximize_array(arr, k)).to eq(10)
    end
  end

  context "when array has only positive numbers" do
    it "returns the sum of elements without modification" do
      arr = [1, 2, 3, 4, 5]
      k = 3
      expect(maximize_array(arr, k)).to eq(arr.sum)
    end
  end
end
