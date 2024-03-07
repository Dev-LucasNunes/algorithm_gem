require_relative '../lib/Problemas/calculate_age'

RSpec.describe "find_age" do
  it "calculate age" do
    current_date = 12
    current_month = 7
    current_year = 2017

    birth_date = 9
    birth_month = 7
    birth_year = 1996

    expect { find_age(current_date, current_month, current_year, birth_date, birth_month, birth_year) }.to output("Present Age\nYears: #{calculated_year}  Months: #{calculated_month}  Days: #{calculated_date}").to_stdout
  end
end
