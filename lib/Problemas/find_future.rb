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

