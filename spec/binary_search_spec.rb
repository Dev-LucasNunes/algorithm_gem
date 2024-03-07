require 'ffaker'
require_relative '../lib/Algoritmos/binary_search'

RSpec.describe "binary_search" do
  context "when the target is present in the array" do
    it "returns the position of the target" do
      array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      target = 5
      expect { binary_search(array, target) }.to output("A chave #{target} está exatamente na posição 4\n").to_stdout
    end
  end

  context "when the target is not present in the array" do
    it "returns 'Chave não encontrada'" do
      array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      target = 10
      expect { binary_search(array, target) }.to output("Chave não encontrada\n").to_stdout
    end
  end

  context "when the array has random elements" do
    it "returns the position of the target" do
      array = (1..10).map { FFaker::Random.rand(1..100) }.sort
      target = array.sample
      expected_index = array.index(target)
      expected_output = "A chave #{target} está exatamente na posição #{expected_index}\n"
      expect { binary_search(array, target) }.to output(expected_output).to_stdout
    end
  end
end
