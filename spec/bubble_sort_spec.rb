require_relative '../lib/Algoritmos/bubble_sort'

RSpec.describe 'BubbleSort' do
  it 'Ordena corretamente uma matriz desordenada' do
    array_desordenado = [6, 3, 0, 5, 10, 2, 27, 7]
    array_ordenado = bubble_sort(array_desordenado)
    expect(array_ordenado).to eq([0, 2, 3, 5, 6, 7, 10, 27])
  end

  it 'Não altera uma matriz já ordenada' do
    array_ordenado = [1, 2, 3, 4, 5]
    expect(bubble_sort(array_ordenado)).to eq(array_ordenado)
  end

  it 'Ordena corretamente uma matriz reversamente ordenada' do
    array_desordenado = [5, 4, 3, 2, 1]
    array_ordenado = bubble_sort(array_desordenado)
    expect(array_ordenado).to eq([1, 2, 3, 4, 5])
  end
end
