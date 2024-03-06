require_relative '../lib/Algoritmos/bubble_sort'

RSpec.describe 'Reverse_array' do
  it 'reverse array from (k) element' do
    ordered_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    reverse_array = reverse_array(ordered_array, 3)
    expect(reverse_array).to eq([8, 9, 10, 1, 2, 3, 4, 5, 6, 7])
  end
end
