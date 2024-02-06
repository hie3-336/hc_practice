require 'date'
require 'optparse'

opt = OptionParser.new

params = {}
opt.on('-m') {|v| params[:m] = v}
opt.parse!(ARGV)

if params[:m]
  puts ARGV[0].to_i
end


today = Date.today
end_month = Date.new(today.year, today.month, -1).day
first_wday = (Date.new(today.year, today.month, 1).wday + 6) % 7
# test = "\e[30m\e[47mテスト\e[0m \n"


a = "     #{today.month}月 #{today.year} \n月 火 水 木 金 土 日\n"

first_wday.times do
  a << "   "
end

end_month.times do |i|
  if i < 9
    a << " "
  end
  if !params[:m] && i == today.day - 1
    a << "\e[30m\e[47m#{i+1}\e[0m ".rjust(3,"*")
  else
    a << "#{i+1} "
  end
  
  if i % 7 == first_wday
    a << "\n"
  end
end

print a
