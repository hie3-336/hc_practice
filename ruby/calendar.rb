require 'date'
today = Date.today
end_month = Date.new(today.year, today.month, -1).day
puts end_month

a = "     #{today.month}月 #{today.year} \n月 火 水 木 金 土 日\n"

end_month.times do |i|
  a << "#{i+1} ".rjust(3)
  if i % 7 == 6 
    a << "\n"
  end
end

print a

# b = " 1  2  3  4  5  6  7"
# c = "\n"
# d = " 8  9 10 11 12 13 14"
# print a+b+c+d