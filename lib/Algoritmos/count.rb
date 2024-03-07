def count(string)
  count_uppercase = 0
  count_lowercase = 0
  count_especial = 0
  count_numeric = 0

  string.to_s.each_char do |char|
    if char == char.upcase && char =~ /[A-Za-z]/
      count_uppercase += 1
    elsif char == char.downcase && char =~ /[A-Za-z]/
      count_lowercase += 1
    elsif char =~ /[0-9]/
      count_numeric += 1
    elsif !(char =~ /[A-Za-z0-9]/)
      count_especial += 1
    end
  end
  return count_uppercase, count_lowercase, count_numeric, count_especial
end

