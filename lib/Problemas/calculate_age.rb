def find_age(current_date, current_month, current_year, birth_date, birth_month, birth_year)
  month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  if birth_date > current_date
    current_date += month[birth_month - 1]
    current_month -= 1
  end

  if birth_month > current_month
    current_year -= 1
    current_month += 12
  end

  calculated_date = current_date - birth_date
  calculated_month = current_month - birth_month
  calculated_year = current_year - birth_year

  puts "Present Age\nYears: #{calculated_year}  Months: #{calculated_month}  Days: #{calculated_date}"
  return calculated_year, calculated_month, calculated_date
end
