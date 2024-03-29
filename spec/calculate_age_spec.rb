require_relative '../lib/Problemas/calculate_age'

RSpec.describe "find_age" do
  it "calculate age" do
    current_date = 12
    current_month = 7
    current_year = 2017

    birth_date = 9
    birth_month = 7
    birth_year = 1996

    result = find_age(current_date, current_month, current_year, birth_date, birth_month, birth_year)
    expect(result).to eq([21, 0, 3])
  end
end
