def comp(s, t)
  ss = s.split("/").map(&:to_i)
  tt = t.split("/").map(&:to_i)

  if ss[2] != tt[2]
    return ss[2] - tt[2]
  elsif ss[1] != tt[1]
    return ss[1] - tt[1]
  elsif ss[0] != tt[0]
    return ss[0] - tt[0]
  else
    return 0
  end
end

def next_closest_date(arr, q)
  arr.sort_by! { |date| comp(date, q) }

  l = 0
  r = arr.length - 1
  ind = -1

  while l <= r
    m = (l + r) / 2
    c = comp(q, arr[m])

    if c == 0
      ind = m
      break
    elsif c < 0
      r = m - 1
      ind = m
    else
      l = m + 1
    end
  end

  ind == -1 ? "-1" : arr[ind]
end

#  def find_future(arr, q)
#   q.each do |query|
#      puts next_closest_date(arr, query)
#   end
#  end

#  arr = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
#  q = ["23/3/4345", "4/4/34234234", "12/3/2"]

#  find_age(arr, q)
