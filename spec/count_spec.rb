require_relative '../lib/Algoritmos/count'

RSpec.describe 'Count' do
  it 'count uppercase' do
    phrase = "*GeeKs01fOr@gEEks07"
    count_result = count(phrase)
    expect(count_result[0]).to eq(5)
  end

  it 'count lowercase' do
    phrase = "*GeeKs01fOr@gEEks07"
    count_result = count(phrase)
    expect(count_result[1]).to eq(8)
  end

  it 'count numbers' do
    phrase = "*GeeKs01fOr@gEEks07"
    count_result = count(phrase)
    expect(count_result[2]).to eq(4)
  end

  it 'count special' do
    phrase = "*GeeKs01fOr@gEEks07"
    count_result = count(phrase)
    expect(count_result[3]).to eq(2)
  end
end
