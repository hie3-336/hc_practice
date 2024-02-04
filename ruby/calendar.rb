require 'date'
today = Date.today
end_month = Date.new(today.year, today.month, -1).day
first_wday = (Date.new(today.year, today.month, 1).wday + 6) % 7
test = "\e[30m\e[47mテスト\e[0m \n"
print test


a = "     #{today.month}月 #{today.year} \n月 火 水 木 金 土 日\n"

first_wday.times do
  a << "   "
end

end_month.times do |i|
  a << "#{i+1} ".rjust(3)
  if i % 7 == first_wday
    a << "\n"
  end
end

print a
