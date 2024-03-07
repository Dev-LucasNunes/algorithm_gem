require_relative '../lib/Problemas/calculate_age'

RSpec.describe "missing_character" do
  it "check missing alphabet characters" do
    phrase = "The Quick brown FOX Jumps"
    result = missing_character(phrase)
    expect(result.join).to eq('adglvyz')
  end
end
