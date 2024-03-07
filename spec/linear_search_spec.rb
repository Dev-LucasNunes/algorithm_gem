require_relative '../lib/Algoritmos/binary_search'

RSpec.describe "linear_search" do
  context "when the target is present in the array" do
    it "returns the position of the target" do
      array = [10, 50, 30, 70, 80, 20, 90, 40]
      target = 30
      expected_position = array.index(target)
      expect { linear_search(array, target) }.to output("a chave #{target} foi encontrada na posição #{expected_position}\n").to_stdout
    end
  end
end
